// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'split_bill_flow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplitBillFlowState {


@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<Bill> bills,  int totalUnitsConsumed)  billGenerated,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<Bill> bills,  int totalUnitsConsumed)?  billGenerated,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<Bill> bills,  int totalUnitsConsumed)?  billGenerated,required TResult orElse(),}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _BillGenerated value)  billGenerated,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _BillGenerated value)?  billGenerated,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _BillGenerated value)?  billGenerated,required TResult orElse(),}) => throw _privateConstructorUsedError;


}

/// @nodoc
abstract class $SplitBillFlowStateCopyWith<$Res>  {
  factory $SplitBillFlowStateCopyWith(SplitBillFlowState value, $Res Function(SplitBillFlowState) then) = _$SplitBillFlowStateCopyWithImpl<$Res, SplitBillFlowState>;



}

/// @nodoc
class _$SplitBillFlowStateCopyWithImpl<$Res,$Val extends SplitBillFlowState> implements $SplitBillFlowStateCopyWith<$Res> {
  _$SplitBillFlowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SplitBillFlowState
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>  {
  factory _$$InitialImplCopyWith(_$InitialImpl value, $Res Function(_$InitialImpl) then) = __$$InitialImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res> extends _$SplitBillFlowStateCopyWithImpl<$Res, _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);


/// Create a copy of SplitBillFlowState
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$InitialImpl  implements _Initial {
  const _$InitialImpl();

  



@override
String toString() {
  return 'SplitBillFlowState.initial()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InitialImpl);
}


@override
int get hashCode => runtimeType.hashCode;


@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<Bill> bills,  int totalUnitsConsumed)  billGenerated,}) {
  return initial();
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<Bill> bills,  int totalUnitsConsumed)?  billGenerated,}) {
  return initial?.call();
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<Bill> bills,  int totalUnitsConsumed)?  billGenerated,required TResult orElse(),}) {
  if (initial != null) {
    return initial();
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _BillGenerated value)  billGenerated,}) {
  return initial(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _BillGenerated value)?  billGenerated,}) {
  return initial?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _BillGenerated value)?  billGenerated,required TResult orElse(),}) {
  if (initial != null) {
    return initial(this);
  }
  return orElse();
}

}


abstract class _Initial implements SplitBillFlowState {
  const factory _Initial() = _$InitialImpl;
  

  



}

/// @nodoc
abstract class _$$BillGeneratedImplCopyWith<$Res>  {
  factory _$$BillGeneratedImplCopyWith(_$BillGeneratedImpl value, $Res Function(_$BillGeneratedImpl) then) = __$$BillGeneratedImplCopyWithImpl<$Res>;
@useResult
$Res call({
 List<Bill> bills, int totalUnitsConsumed
});



}

/// @nodoc
class __$$BillGeneratedImplCopyWithImpl<$Res> extends _$SplitBillFlowStateCopyWithImpl<$Res, _$BillGeneratedImpl> implements _$$BillGeneratedImplCopyWith<$Res> {
  __$$BillGeneratedImplCopyWithImpl(_$BillGeneratedImpl _value, $Res Function(_$BillGeneratedImpl) _then)
      : super(_value, _then);


/// Create a copy of SplitBillFlowState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bills = null,Object? totalUnitsConsumed = null,}) {
  return _then(_$BillGeneratedImpl(
bills: null == bills ? _value._bills : bills // ignore: cast_nullable_to_non_nullable
as List<Bill>,totalUnitsConsumed: null == totalUnitsConsumed ? _value.totalUnitsConsumed : totalUnitsConsumed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$BillGeneratedImpl  implements _BillGenerated {
  const _$BillGeneratedImpl({required final  List<Bill> bills, required this.totalUnitsConsumed}): _bills = bills;

  

 final  List<Bill> _bills;
@override List<Bill> get bills {
  if (_bills is EqualUnmodifiableListView) return _bills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bills);
}

@override final  int totalUnitsConsumed;

@override
String toString() {
  return 'SplitBillFlowState.billGenerated(bills: $bills, totalUnitsConsumed: $totalUnitsConsumed)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BillGeneratedImpl&&const DeepCollectionEquality().equals(other._bills, _bills)&&(identical(other.totalUnitsConsumed, totalUnitsConsumed) || other.totalUnitsConsumed == totalUnitsConsumed));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bills),totalUnitsConsumed);

/// Create a copy of SplitBillFlowState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$BillGeneratedImplCopyWith<_$BillGeneratedImpl> get copyWith => __$$BillGeneratedImplCopyWithImpl<_$BillGeneratedImpl>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<Bill> bills,  int totalUnitsConsumed)  billGenerated,}) {
  return billGenerated(bills,totalUnitsConsumed);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<Bill> bills,  int totalUnitsConsumed)?  billGenerated,}) {
  return billGenerated?.call(bills,totalUnitsConsumed);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<Bill> bills,  int totalUnitsConsumed)?  billGenerated,required TResult orElse(),}) {
  if (billGenerated != null) {
    return billGenerated(bills,totalUnitsConsumed);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _BillGenerated value)  billGenerated,}) {
  return billGenerated(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _BillGenerated value)?  billGenerated,}) {
  return billGenerated?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _BillGenerated value)?  billGenerated,required TResult orElse(),}) {
  if (billGenerated != null) {
    return billGenerated(this);
  }
  return orElse();
}

}


abstract class _BillGenerated implements SplitBillFlowState {
  const factory _BillGenerated({required final  List<Bill> bills, required final  int totalUnitsConsumed}) = _$BillGeneratedImpl;
  

  

 List<Bill> get bills; int get totalUnitsConsumed;
/// Create a copy of SplitBillFlowState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$BillGeneratedImplCopyWith<_$BillGeneratedImpl> get copyWith => throw _privateConstructorUsedError;

}
