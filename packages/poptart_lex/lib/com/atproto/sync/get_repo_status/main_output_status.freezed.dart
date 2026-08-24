// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_output_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SyncGetRepoStatusOutputStatus {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncGetRepoStatusOutputStatus&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SyncGetRepoStatusOutputStatus(data: $data)';
}


}

/// @nodoc
class $SyncGetRepoStatusOutputStatusCopyWith<$Res>  {
$SyncGetRepoStatusOutputStatusCopyWith(SyncGetRepoStatusOutputStatus _, $Res Function(SyncGetRepoStatusOutputStatus) __);
}


/// Adds pattern-matching-related methods to [SyncGetRepoStatusOutputStatus].
extension SyncGetRepoStatusOutputStatusPatterns on SyncGetRepoStatusOutputStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SyncGetRepoStatusOutputStatusKnownValue value)?  knownValue,TResult Function( SyncGetRepoStatusOutputStatusUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SyncGetRepoStatusOutputStatusKnownValue() when knownValue != null:
return knownValue(_that);case SyncGetRepoStatusOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SyncGetRepoStatusOutputStatusKnownValue value)  knownValue,required TResult Function( SyncGetRepoStatusOutputStatusUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case SyncGetRepoStatusOutputStatusKnownValue():
return knownValue(_that);case SyncGetRepoStatusOutputStatusUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SyncGetRepoStatusOutputStatusKnownValue value)?  knownValue,TResult? Function( SyncGetRepoStatusOutputStatusUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case SyncGetRepoStatusOutputStatusKnownValue() when knownValue != null:
return knownValue(_that);case SyncGetRepoStatusOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( KnownSyncGetRepoStatusOutputStatus data)?  knownValue,TResult Function( String data)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SyncGetRepoStatusOutputStatusKnownValue() when knownValue != null:
return knownValue(_that.data);case SyncGetRepoStatusOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( KnownSyncGetRepoStatusOutputStatus data)  knownValue,required TResult Function( String data)  unknown,}) {final _that = this;
switch (_that) {
case SyncGetRepoStatusOutputStatusKnownValue():
return knownValue(_that.data);case SyncGetRepoStatusOutputStatusUnknown():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( KnownSyncGetRepoStatusOutputStatus data)?  knownValue,TResult? Function( String data)?  unknown,}) {final _that = this;
switch (_that) {
case SyncGetRepoStatusOutputStatusKnownValue() when knownValue != null:
return knownValue(_that.data);case SyncGetRepoStatusOutputStatusUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class SyncGetRepoStatusOutputStatusKnownValue extends SyncGetRepoStatusOutputStatus {
  const SyncGetRepoStatusOutputStatusKnownValue({required this.data}): super._();
  

@override final  KnownSyncGetRepoStatusOutputStatus data;

/// Create a copy of SyncGetRepoStatusOutputStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncGetRepoStatusOutputStatusKnownValueCopyWith<SyncGetRepoStatusOutputStatusKnownValue> get copyWith => _$SyncGetRepoStatusOutputStatusKnownValueCopyWithImpl<SyncGetRepoStatusOutputStatusKnownValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncGetRepoStatusOutputStatusKnownValue&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'SyncGetRepoStatusOutputStatus.knownValue(data: $data)';
}


}

/// @nodoc
abstract mixin class $SyncGetRepoStatusOutputStatusKnownValueCopyWith<$Res> implements $SyncGetRepoStatusOutputStatusCopyWith<$Res> {
  factory $SyncGetRepoStatusOutputStatusKnownValueCopyWith(SyncGetRepoStatusOutputStatusKnownValue value, $Res Function(SyncGetRepoStatusOutputStatusKnownValue) _then) = _$SyncGetRepoStatusOutputStatusKnownValueCopyWithImpl;
@useResult
$Res call({
 KnownSyncGetRepoStatusOutputStatus data
});




}
/// @nodoc
class _$SyncGetRepoStatusOutputStatusKnownValueCopyWithImpl<$Res>
    implements $SyncGetRepoStatusOutputStatusKnownValueCopyWith<$Res> {
  _$SyncGetRepoStatusOutputStatusKnownValueCopyWithImpl(this._self, this._then);

  final SyncGetRepoStatusOutputStatusKnownValue _self;
  final $Res Function(SyncGetRepoStatusOutputStatusKnownValue) _then;

/// Create a copy of SyncGetRepoStatusOutputStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(SyncGetRepoStatusOutputStatusKnownValue(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as KnownSyncGetRepoStatusOutputStatus,
  ));
}


}

/// @nodoc


class SyncGetRepoStatusOutputStatusUnknown extends SyncGetRepoStatusOutputStatus {
  const SyncGetRepoStatusOutputStatusUnknown({required this.data}): super._();
  

@override final  String data;

/// Create a copy of SyncGetRepoStatusOutputStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncGetRepoStatusOutputStatusUnknownCopyWith<SyncGetRepoStatusOutputStatusUnknown> get copyWith => _$SyncGetRepoStatusOutputStatusUnknownCopyWithImpl<SyncGetRepoStatusOutputStatusUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncGetRepoStatusOutputStatusUnknown&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'SyncGetRepoStatusOutputStatus.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $SyncGetRepoStatusOutputStatusUnknownCopyWith<$Res> implements $SyncGetRepoStatusOutputStatusCopyWith<$Res> {
  factory $SyncGetRepoStatusOutputStatusUnknownCopyWith(SyncGetRepoStatusOutputStatusUnknown value, $Res Function(SyncGetRepoStatusOutputStatusUnknown) _then) = _$SyncGetRepoStatusOutputStatusUnknownCopyWithImpl;
@useResult
$Res call({
 String data
});




}
/// @nodoc
class _$SyncGetRepoStatusOutputStatusUnknownCopyWithImpl<$Res>
    implements $SyncGetRepoStatusOutputStatusUnknownCopyWith<$Res> {
  _$SyncGetRepoStatusOutputStatusUnknownCopyWithImpl(this._self, this._then);

  final SyncGetRepoStatusOutputStatusUnknown _self;
  final $Res Function(SyncGetRepoStatusOutputStatusUnknown) _then;

/// Create a copy of SyncGetRepoStatusOutputStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(SyncGetRepoStatusOutputStatusUnknown(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
