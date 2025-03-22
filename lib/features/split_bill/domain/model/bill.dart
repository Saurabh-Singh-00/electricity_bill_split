import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill.freezed.dart';
part 'bill.g.dart';

@freezed
class Bill with _$Bill {
  const factory Bill({
    required int unitsConsumed,
    required String name,
    required double unitBillAmount,
    required double remainingBillAmount,
    required double billSummation,
    required double totalBillAmount,
  }) = _Bill;

  factory Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);
}
