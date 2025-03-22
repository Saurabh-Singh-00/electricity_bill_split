// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillImpl _$$BillImplFromJson(Map<String, dynamic> json) => _$BillImpl(
      unitsConsumed: (json['units_consumed'] as num).toInt(),
      name: json['name'] as String,
      unitBillAmount: (json['unit_bill_amount'] as num).toDouble(),
      remainingBillAmount: (json['remaining_bill_amount'] as num).toDouble(),
      billSummation: (json['bill_summation'] as num).toDouble(),
      totalBillAmount: (json['total_bill_amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$BillImplToJson(_$BillImpl instance) =>
    <String, dynamic>{
      'units_consumed': instance.unitsConsumed,
      'name': instance.name,
      'unit_bill_amount': instance.unitBillAmount,
      'remaining_bill_amount': instance.remainingBillAmount,
      'bill_summation': instance.billSummation,
      'total_bill_amount': instance.totalBillAmount,
    };
