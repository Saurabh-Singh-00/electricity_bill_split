// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Meter _$MeterFromJson(Map<String, dynamic> json) {
return _Meter.fromJson(json);
}

/// @nodoc
mixin _$Meter {

 String get id => throw _privateConstructorUsedError; String get name => throw _privateConstructorUsedError; int get unitConsumed => throw _privateConstructorUsedError; MeterType get type => throw _privateConstructorUsedError;






/// Serializes this Meter to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of Meter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$MeterCopyWith<Meter> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $MeterCopyWith<$Res>  {
  factory $MeterCopyWith(Meter value, $Res Function(Meter) then) = _$MeterCopyWithImpl<$Res, Meter>;
@useResult
$Res call({
 String id, String name, int unitConsumed, MeterType type
});



}

/// @nodoc
class _$MeterCopyWithImpl<$Res,$Val extends Meter> implements $MeterCopyWith<$Res> {
  _$MeterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of Meter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? unitConsumed = null,Object? type = null,}) {
  return _then(_value.copyWith(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,unitConsumed: null == unitConsumed ? _value.unitConsumed : unitConsumed // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _value.type : type // ignore: cast_nullable_to_non_nullable
as MeterType,
  )as $Val);
}

}


/// @nodoc
abstract class _$$MeterImplCopyWith<$Res> implements $MeterCopyWith<$Res> {
  factory _$$MeterImplCopyWith(_$MeterImpl value, $Res Function(_$MeterImpl) then) = __$$MeterImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String id, String name, int unitConsumed, MeterType type
});



}

/// @nodoc
class __$$MeterImplCopyWithImpl<$Res> extends _$MeterCopyWithImpl<$Res, _$MeterImpl> implements _$$MeterImplCopyWith<$Res> {
  __$$MeterImplCopyWithImpl(_$MeterImpl _value, $Res Function(_$MeterImpl) _then)
      : super(_value, _then);


/// Create a copy of Meter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? unitConsumed = null,Object? type = null,}) {
  return _then(_$MeterImpl(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,unitConsumed: null == unitConsumed ? _value.unitConsumed : unitConsumed // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _value.type : type // ignore: cast_nullable_to_non_nullable
as MeterType,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$MeterImpl  implements _Meter {
  const _$MeterImpl({required this.id, required this.name, required this.unitConsumed, required this.type});

  factory _$MeterImpl.fromJson(Map<String, dynamic> json) => _$$MeterImplFromJson(json);

@override final  String id;
@override final  String name;
@override final  int unitConsumed;
@override final  MeterType type;

@override
String toString() {
  return 'Meter(id: $id, name: $name, unitConsumed: $unitConsumed, type: $type)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$MeterImpl&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.unitConsumed, unitConsumed) || other.unitConsumed == unitConsumed)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,unitConsumed,type);

/// Create a copy of Meter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$MeterImplCopyWith<_$MeterImpl> get copyWith => __$$MeterImplCopyWithImpl<_$MeterImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$MeterImplToJson(this, );
}
}


abstract class _Meter implements Meter {
  const factory _Meter({required final  String id, required final  String name, required final  int unitConsumed, required final  MeterType type}) = _$MeterImpl;
  

  factory _Meter.fromJson(Map<String, dynamic> json) = _$MeterImpl.fromJson;

@override String get id;@override String get name;@override int get unitConsumed;@override MeterType get type;
/// Create a copy of Meter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$MeterImplCopyWith<_$MeterImpl> get copyWith => throw _privateConstructorUsedError;

}
