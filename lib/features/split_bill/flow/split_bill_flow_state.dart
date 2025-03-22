import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/features/split_bill/domain/model/bill.dart';

part 'split_bill_flow_state.freezed.dart';

@freezed
sealed class SplitBillFlowState with _$SplitBillFlowState {
  const factory SplitBillFlowState.initial() = _Initial;
  const factory SplitBillFlowState.billGenerated({
    required List<Bill> bills,
    required int totalUnitsConsumed,
  }) = _BillGenerated;
}
