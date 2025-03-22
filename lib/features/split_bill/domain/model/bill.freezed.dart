// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bill _$BillFromJson(Map<String, dynamic> json) {
return _Bill.fromJson(json);
}

/// @nodoc
mixin _$Bill {

 int get unitsConsumed => throw _privateConstructorUsedError; String get name => throw _privateConstructorUsedError; double get unitBillAmount => throw _privateConstructorUsedError; double get remainingBillAmount => throw _privateConstructorUsedError; double get billSummation => throw _privateConstructorUsedError; double get totalBillAmount => throw _privateConstructorUsedError;






/// Serializes this Bill to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$BillCopyWith<Bill> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $BillCopyWith<$Res>  {
  factory $BillCopyWith(Bill value, $Res Function(Bill) then) = _$BillCopyWithImpl<$Res, Bill>;
@useResult
$Res call({
 int unitsConsumed, String name, double unitBillAmount, double remainingBillAmount, double billSummation, double totalBillAmount
});



}

/// @nodoc
class _$BillCopyWithImpl<$Res,$Val extends Bill> implements $BillCopyWith<$Res> {
  _$BillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unitsConsumed = null,Object? name = null,Object? unitBillAmount = null,Object? remainingBillAmount = null,Object? billSummation = null,Object? totalBillAmount = null,}) {
  return _then(_value.copyWith(
unitsConsumed: null == unitsConsumed ? _value.unitsConsumed : unitsConsumed // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,unitBillAmount: null == unitBillAmount ? _value.unitBillAmount : unitBillAmount // ignore: cast_nullable_to_non_nullable
as double,remainingBillAmount: null == remainingBillAmount ? _value.remainingBillAmount : remainingBillAmount // ignore: cast_nullable_to_non_nullable
as double,billSummation: null == billSummation ? _value.billSummation : billSummation // ignore: cast_nullable_to_non_nullable
as double,totalBillAmount: null == totalBillAmount ? _value.totalBillAmount : totalBillAmount // ignore: cast_nullable_to_non_nullable
as double,
  )as $Val);
}

}


/// @nodoc
abstract class _$$BillImplCopyWith<$Res> implements $BillCopyWith<$Res> {
  factory _$$BillImplCopyWith(_$BillImpl value, $Res Function(_$BillImpl) then) = __$$BillImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int unitsConsumed, String name, double unitBillAmount, double remainingBillAmount, double billSummation, double totalBillAmount
});



}

/// @nodoc
class __$$BillImplCopyWithImpl<$Res> extends _$BillCopyWithImpl<$Res, _$BillImpl> implements _$$BillImplCopyWith<$Res> {
  __$$BillImplCopyWithImpl(_$BillImpl _value, $Res Function(_$BillImpl) _then)
      : super(_value, _then);


/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unitsConsumed = null,Object? name = null,Object? unitBillAmount = null,Object? remainingBillAmount = null,Object? billSummation = null,Object? totalBillAmount = null,}) {
  return _then(_$BillImpl(
unitsConsumed: null == unitsConsumed ? _value.unitsConsumed : unitsConsumed // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,unitBillAmount: null == unitBillAmount ? _value.unitBillAmount : unitBillAmount // ignore: cast_nullable_to_non_nullable
as double,remainingBillAmount: null == remainingBillAmount ? _value.remainingBillAmount : remainingBillAmount // ignore: cast_nullable_to_non_nullable
as double,billSummation: null == billSummation ? _value.billSummation : billSummation // ignore: cast_nullable_to_non_nullable
as double,totalBillAmount: null == totalBillAmount ? _value.totalBillAmount : totalBillAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$BillImpl  implements _Bill {
  const _$BillImpl({required this.unitsConsumed, required this.name, required this.unitBillAmount, required this.remainingBillAmount, required this.billSummation, required this.totalBillAmount});

  factory _$BillImpl.fromJson(Map<String, dynamic> json) => _$$BillImplFromJson(json);

@override final  int unitsConsumed;
@override final  String name;
@override final  double unitBillAmount;
@override final  double remainingBillAmount;
@override final  double billSummation;
@override final  double totalBillAmount;

@override
String toString() {
  return 'Bill(unitsConsumed: $unitsConsumed, name: $name, unitBillAmount: $unitBillAmount, remainingBillAmount: $remainingBillAmount, billSummation: $billSummation, totalBillAmount: $totalBillAmount)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BillImpl&&(identical(other.unitsConsumed, unitsConsumed) || other.unitsConsumed == unitsConsumed)&&(identical(other.name, name) || other.name == name)&&(identical(other.unitBillAmount, unitBillAmount) || other.unitBillAmount == unitBillAmount)&&(identical(other.remainingBillAmount, remainingBillAmount) || other.remainingBillAmount == remainingBillAmount)&&(identical(other.billSummation, billSummation) || other.billSummation == billSummation)&&(identical(other.totalBillAmount, totalBillAmount) || other.totalBillAmount == totalBillAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unitsConsumed,name,unitBillAmount,remainingBillAmount,billSummation,totalBillAmount);

/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$BillImplCopyWith<_$BillImpl> get copyWith => __$$BillImplCopyWithImpl<_$BillImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$BillImplToJson(this, );
}
}


abstract class _Bill implements Bill {
  const factory _Bill({required final  int unitsConsumed, required final  String name, required final  double unitBillAmount, required final  double remainingBillAmount, required final  double billSummation, required final  double totalBillAmount}) = _$BillImpl;
  

  factory _Bill.fromJson(Map<String, dynamic> json) = _$BillImpl.fromJson;

@override int get unitsConsumed;@override String get name;@override double get unitBillAmount;@override double get remainingBillAmount;@override double get billSummation;@override double get totalBillAmount;
/// Create a copy of Bill
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$BillImplCopyWith<_$BillImpl> get copyWith => throw _privateConstructorUsedError;

}
