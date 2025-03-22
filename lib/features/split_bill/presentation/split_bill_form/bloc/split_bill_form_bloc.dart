import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/core/utility/process_state.dart';
import 'package:myapp/features/split_bill/domain/model/meter.dart';
import 'package:myapp/features/split_bill/domain/usecase/generate_bill_usecase.dart';
import 'package:myapp/features/split_bill/flow/split_bill_flow_state.dart';
import 'package:uuid/uuid.dart';

part 'split_bill_form_event.dart';
part 'split_bill_form_state.dart';
part 'split_bill_form_bloc.freezed.dart';

@injectable
class SplitBillFormBloc extends Bloc<SplitBillFormEvent, SplitBillFormState> {
  SplitBillFormBloc(
    this._splitBillFlowController,
    this._generateBillUsecase,
  ) : super(const SplitBillFormState(processState: ProcessState.success())) {
    on<SplitBillFormEvent>(
      (event, emit) => event.map(
        splitBill: (e) => _onSplitBill(e, emit),
        unitConsumptionChanged: (e) => _onUnitConsumptionChanged(e, emit),
        totalBillChanged: (e) => _onTotalBillChanged(e, emit),
        addMeter: (e) => _onAddTenant(e, emit),
        updateMeter: (e) => _onUpdateTenant(e, emit),
        deleteMeter: (e) => _onDeleteTenant(e, emit),
        considerMainMeterForRemainingUnitsChanged: (e) =>
            _onConsiderMainMeterForRemainingUnitsChanged(e, emit),
      ),
    );
  }

  final FlowController<SplitBillFlowState> _splitBillFlowController;
  final GenerateBillUsecase _generateBillUsecase;
  final Uuid _uuid = const Uuid();

  void _onSplitBill(_SplitBill e, Emitter<SplitBillFormState> emit) {
    if (state.meters.isEmpty) {
      return;
    }
    int meterUnitsConsumed = state.meters.fold(0, (p, t) => p + t.unitConsumed);
    int totalUnitsConsumed = state.unitConsumed;
    if (totalUnitsConsumed < meterUnitsConsumed) {
      totalUnitsConsumed = meterUnitsConsumed;
    }
    final result = _generateBillUsecase(
      totalUnitsConsumed,
      state.totalBill,
      state.meters,
    );
    result.fold((f) {
      emit(
        state.copyWith(processState: ProcessState.failure(exception: f)),
      );
      emit(
        state.copyWith(processState: const ProcessState.initial()),
      );
    }, (bills) {
      _splitBillFlowController.update(
        (_) => SplitBillFlowState.billGenerated(
          bills: bills,
          totalUnitsConsumed: totalUnitsConsumed,
        ),
      );
    });
  }

  void _onUnitConsumptionChanged(
      _UnitConsumptionChanged e, Emitter<SplitBillFormState> emit) {
    emit(
      state.copyWith(unitConsumed: e.unitConsumed),
    );
  }

  void _onTotalBillChanged(
      _TotalBillChanged e, Emitter<SplitBillFormState> emit) {
    emit(
      state.copyWith(totalBill: e.bill),
    );
  }

  void _onAddTenant(_AddMeter e, Emitter<SplitBillFormState> emit) {
    emit(
      state.copyWith(
        meters: [
          ...state.meters,
          Meter(
            id: _uuid.v4(),
            name: 'Submeter',
            unitConsumed: 0,
            type: MeterType.sub,
          ),
        ],
      ),
    );
  }

  void _onUpdateTenant(_UpdateMeter e, Emitter<SplitBillFormState> emit) {
    final meter =
        state.meters.firstWhere((element) => element.id == e.meter.id);
    final index = state.meters.indexOf(meter);
    final updatedMeters =
        meter.copyWith(name: e.meter.name, unitConsumed: e.meter.unitConsumed);
    final updatedTenantList = List.of(state.meters)..[index] = updatedMeters;
    emit(
      state.copyWith(meters: updatedTenantList),
    );
  }

  void _onDeleteTenant(_DeleteMeter e, Emitter<SplitBillFormState> emit) {
    final updatedMeterList = state.meters
        .where((m) => m.id != e.meter.id)
        .toList(growable: false);
    emit(
      state.copyWith(meters: updatedMeterList),
    );
  }

  void _onConsiderMainMeterForRemainingUnitsChanged(
    _ConsiderMainMeterForRemainingUnitsChanged e,
    Emitter<SplitBillFormState> emit,
  ) {
    emit(
      state.copyWith(
        considerMainMeterForRemainingUnits:
            e.considerMainMeterForRemainingUnits,
      ),
    );
  }
}
