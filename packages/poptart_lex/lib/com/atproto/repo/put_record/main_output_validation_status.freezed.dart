// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_output_validation_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RepoPutRecordOutputValidationStatus {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepoPutRecordOutputValidationStatus&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'RepoPutRecordOutputValidationStatus(data: $data)';
}


}

/// @nodoc
class $RepoPutRecordOutputValidationStatusCopyWith<$Res>  {
$RepoPutRecordOutputValidationStatusCopyWith(RepoPutRecordOutputValidationStatus _, $Res Function(RepoPutRecordOutputValidationStatus) __);
}


/// Adds pattern-matching-related methods to [RepoPutRecordOutputValidationStatus].
extension RepoPutRecordOutputValidationStatusPatterns on RepoPutRecordOutputValidationStatus {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RepoPutRecordOutputValidationStatusKnownValue value)?  knownValue,TResult Function( RepoPutRecordOutputValidationStatusUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RepoPutRecordOutputValidationStatusKnownValue() when knownValue != null:
return knownValue(_that);case RepoPutRecordOutputValidationStatusUnknown() when unknown != null:
return unknown(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RepoPutRecordOutputValidationStatusKnownValue value)  knownValue,required TResult Function( RepoPutRecordOutputValidationStatusUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case RepoPutRecordOutputValidationStatusKnownValue():
return knownValue(_that);case RepoPutRecordOutputValidationStatusUnknown():
return unknown(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RepoPutRecordOutputValidationStatusKnownValue value)?  knownValue,TResult? Function( RepoPutRecordOutputValidationStatusUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case RepoPutRecordOutputValidationStatusKnownValue() when knownValue != null:
return knownValue(_that);case RepoPutRecordOutputValidationStatusUnknown() when unknown != null:
return unknown(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( KnownRepoPutRecordOutputValidationStatus data)?  knownValue,TResult Function( String data)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RepoPutRecordOutputValidationStatusKnownValue() when knownValue != null:
return knownValue(_that.data);case RepoPutRecordOutputValidationStatusUnknown() when unknown != null:
return unknown(_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( KnownRepoPutRecordOutputValidationStatus data)  knownValue,required TResult Function( String data)  unknown,}) {final _that = this;
switch (_that) {
case RepoPutRecordOutputValidationStatusKnownValue():
return knownValue(_that.data);case RepoPutRecordOutputValidationStatusUnknown():
return unknown(_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( KnownRepoPutRecordOutputValidationStatus data)?  knownValue,TResult? Function( String data)?  unknown,}) {final _that = this;
switch (_that) {
case RepoPutRecordOutputValidationStatusKnownValue() when knownValue != null:
return knownValue(_that.data);case RepoPutRecordOutputValidationStatusUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class RepoPutRecordOutputValidationStatusKnownValue extends RepoPutRecordOutputValidationStatus {
  const RepoPutRecordOutputValidationStatusKnownValue({required this.data}): super._();
  

@override final  KnownRepoPutRecordOutputValidationStatus data;

/// Create a copy of RepoPutRecordOutputValidationStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepoPutRecordOutputValidationStatusKnownValueCopyWith<RepoPutRecordOutputValidationStatusKnownValue> get copyWith => _$RepoPutRecordOutputValidationStatusKnownValueCopyWithImpl<RepoPutRecordOutputValidationStatusKnownValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepoPutRecordOutputValidationStatusKnownValue&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'RepoPutRecordOutputValidationStatus.knownValue(data: $data)';
}


}

/// @nodoc
abstract mixin class $RepoPutRecordOutputValidationStatusKnownValueCopyWith<$Res> implements $RepoPutRecordOutputValidationStatusCopyWith<$Res> {
  factory $RepoPutRecordOutputValidationStatusKnownValueCopyWith(RepoPutRecordOutputValidationStatusKnownValue value, $Res Function(RepoPutRecordOutputValidationStatusKnownValue) _then) = _$RepoPutRecordOutputValidationStatusKnownValueCopyWithImpl;
@useResult
$Res call({
 KnownRepoPutRecordOutputValidationStatus data
});




}
/// @nodoc
class _$RepoPutRecordOutputValidationStatusKnownValueCopyWithImpl<$Res>
    implements $RepoPutRecordOutputValidationStatusKnownValueCopyWith<$Res> {
  _$RepoPutRecordOutputValidationStatusKnownValueCopyWithImpl(this._self, this._then);

  final RepoPutRecordOutputValidationStatusKnownValue _self;
  final $Res Function(RepoPutRecordOutputValidationStatusKnownValue) _then;

/// Create a copy of RepoPutRecordOutputValidationStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(RepoPutRecordOutputValidationStatusKnownValue(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as KnownRepoPutRecordOutputValidationStatus,
  ));
}


}

/// @nodoc


class RepoPutRecordOutputValidationStatusUnknown extends RepoPutRecordOutputValidationStatus {
  const RepoPutRecordOutputValidationStatusUnknown({required this.data}): super._();
  

@override final  String data;

/// Create a copy of RepoPutRecordOutputValidationStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepoPutRecordOutputValidationStatusUnknownCopyWith<RepoPutRecordOutputValidationStatusUnknown> get copyWith => _$RepoPutRecordOutputValidationStatusUnknownCopyWithImpl<RepoPutRecordOutputValidationStatusUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepoPutRecordOutputValidationStatusUnknown&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'RepoPutRecordOutputValidationStatus.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $RepoPutRecordOutputValidationStatusUnknownCopyWith<$Res> implements $RepoPutRecordOutputValidationStatusCopyWith<$Res> {
  factory $RepoPutRecordOutputValidationStatusUnknownCopyWith(RepoPutRecordOutputValidationStatusUnknown value, $Res Function(RepoPutRecordOutputValidationStatusUnknown) _then) = _$RepoPutRecordOutputValidationStatusUnknownCopyWithImpl;
@useResult
$Res call({
 String data
});




}
/// @nodoc
class _$RepoPutRecordOutputValidationStatusUnknownCopyWithImpl<$Res>
    implements $RepoPutRecordOutputValidationStatusUnknownCopyWith<$Res> {
  _$RepoPutRecordOutputValidationStatusUnknownCopyWithImpl(this._self, this._then);

  final RepoPutRecordOutputValidationStatusUnknown _self;
  final $Res Function(RepoPutRecordOutputValidationStatusUnknown) _then;

/// Create a copy of RepoPutRecordOutputValidationStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(RepoPutRecordOutputValidationStatusUnknown(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
