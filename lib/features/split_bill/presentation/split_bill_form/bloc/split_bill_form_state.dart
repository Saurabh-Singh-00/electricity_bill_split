part of 'split_bill_form_bloc.dart';

@freezed
sealed class SplitBillFormState with _$SplitBillFormState{
  const factory SplitBillFormState({
    @Default(ProcessState.initial()) ProcessState processState,
    @Default(0) int unitConsumed,
    @Default(0.0) double totalBill,
    @Default(<Meter>[]) List<Meter> meters,
    @Default(true) bool considerMainMeterForRemainingUnits,
  }) = _SplitBillFormState;
}