part of 'split_bill_form_bloc.dart';

@freezed
sealed class SplitBillFormEvent with _$SplitBillFormEvent {
  const factory SplitBillFormEvent.splitBill() = _SplitBill;
  const factory SplitBillFormEvent.unitConsumptionChanged(int unitConsumed) =
      _UnitConsumptionChanged;
  const factory SplitBillFormEvent.totalBillChanged(double bill) =
      _TotalBillChanged;
  const factory SplitBillFormEvent.addMeter() = _AddMeter;
  const factory SplitBillFormEvent.updateMeter(Meter meter) = _UpdateMeter;
  const factory SplitBillFormEvent.deleteMeter(Meter meter) = _DeleteMeter;
  const factory SplitBillFormEvent.considerMainMeterForRemainingUnitsChanged(
    bool considerMainMeterForRemainingUnits,
  ) = _ConsiderMainMeterForRemainingUnitsChanged;
}
