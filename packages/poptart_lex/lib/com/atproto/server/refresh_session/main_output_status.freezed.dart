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
mixin _$ServerRefreshSessionOutputStatus {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerRefreshSessionOutputStatus&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ServerRefreshSessionOutputStatus(data: $data)';
}


}

/// @nodoc
class $ServerRefreshSessionOutputStatusCopyWith<$Res>  {
$ServerRefreshSessionOutputStatusCopyWith(ServerRefreshSessionOutputStatus _, $Res Function(ServerRefreshSessionOutputStatus) __);
}


/// Adds pattern-matching-related methods to [ServerRefreshSessionOutputStatus].
extension ServerRefreshSessionOutputStatusPatterns on ServerRefreshSessionOutputStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerRefreshSessionOutputStatusKnownValue value)?  knownValue,TResult Function( ServerRefreshSessionOutputStatusUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerRefreshSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that);case ServerRefreshSessionOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerRefreshSessionOutputStatusKnownValue value)  knownValue,required TResult Function( ServerRefreshSessionOutputStatusUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case ServerRefreshSessionOutputStatusKnownValue():
return knownValue(_that);case ServerRefreshSessionOutputStatusUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerRefreshSessionOutputStatusKnownValue value)?  knownValue,TResult? Function( ServerRefreshSessionOutputStatusUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case ServerRefreshSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that);case ServerRefreshSessionOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( KnownServerRefreshSessionOutputStatus data)?  knownValue,TResult Function( String data)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerRefreshSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that.data);case ServerRefreshSessionOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( KnownServerRefreshSessionOutputStatus data)  knownValue,required TResult Function( String data)  unknown,}) {final _that = this;
switch (_that) {
case ServerRefreshSessionOutputStatusKnownValue():
return knownValue(_that.data);case ServerRefreshSessionOutputStatusUnknown():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( KnownServerRefreshSessionOutputStatus data)?  knownValue,TResult? Function( String data)?  unknown,}) {final _that = this;
switch (_that) {
case ServerRefreshSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that.data);case ServerRefreshSessionOutputStatusUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class ServerRefreshSessionOutputStatusKnownValue extends ServerRefreshSessionOutputStatus {
  const ServerRefreshSessionOutputStatusKnownValue({required this.data}): super._();
  

@override final  KnownServerRefreshSessionOutputStatus data;

/// Create a copy of ServerRefreshSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerRefreshSessionOutputStatusKnownValueCopyWith<ServerRefreshSessionOutputStatusKnownValue> get copyWith => _$ServerRefreshSessionOutputStatusKnownValueCopyWithImpl<ServerRefreshSessionOutputStatusKnownValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerRefreshSessionOutputStatusKnownValue&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ServerRefreshSessionOutputStatus.knownValue(data: $data)';
}


}

/// @nodoc
abstract mixin class $ServerRefreshSessionOutputStatusKnownValueCopyWith<$Res> implements $ServerRefreshSessionOutputStatusCopyWith<$Res> {
  factory $ServerRefreshSessionOutputStatusKnownValueCopyWith(ServerRefreshSessionOutputStatusKnownValue value, $Res Function(ServerRefreshSessionOutputStatusKnownValue) _then) = _$ServerRefreshSessionOutputStatusKnownValueCopyWithImpl;
@useResult
$Res call({
 KnownServerRefreshSessionOutputStatus data
});




}
/// @nodoc
class _$ServerRefreshSessionOutputStatusKnownValueCopyWithImpl<$Res>
    implements $ServerRefreshSessionOutputStatusKnownValueCopyWith<$Res> {
  _$ServerRefreshSessionOutputStatusKnownValueCopyWithImpl(this._self, this._then);

  final ServerRefreshSessionOutputStatusKnownValue _self;
  final $Res Function(ServerRefreshSessionOutputStatusKnownValue) _then;

/// Create a copy of ServerRefreshSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ServerRefreshSessionOutputStatusKnownValue(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as KnownServerRefreshSessionOutputStatus,
  ));
}


}

/// @nodoc


class ServerRefreshSessionOutputStatusUnknown extends ServerRefreshSessionOutputStatus {
  const ServerRefreshSessionOutputStatusUnknown({required this.data}): super._();
  

@override final  String data;

/// Create a copy of ServerRefreshSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerRefreshSessionOutputStatusUnknownCopyWith<ServerRefreshSessionOutputStatusUnknown> get copyWith => _$ServerRefreshSessionOutputStatusUnknownCopyWithImpl<ServerRefreshSessionOutputStatusUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerRefreshSessionOutputStatusUnknown&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ServerRefreshSessionOutputStatus.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $ServerRefreshSessionOutputStatusUnknownCopyWith<$Res> implements $ServerRefreshSessionOutputStatusCopyWith<$Res> {
  factory $ServerRefreshSessionOutputStatusUnknownCopyWith(ServerRefreshSessionOutputStatusUnknown value, $Res Function(ServerRefreshSessionOutputStatusUnknown) _then) = _$ServerRefreshSessionOutputStatusUnknownCopyWithImpl;
@useResult
$Res call({
 String data
});




}
/// @nodoc
class _$ServerRefreshSessionOutputStatusUnknownCopyWithImpl<$Res>
    implements $ServerRefreshSessionOutputStatusUnknownCopyWith<$Res> {
  _$ServerRefreshSessionOutputStatusUnknownCopyWithImpl(this._self, this._then);

  final ServerRefreshSessionOutputStatusUnknown _self;
  final $Res Function(ServerRefreshSessionOutputStatusUnknown) _then;

/// Create a copy of ServerRefreshSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ServerRefreshSessionOutputStatusUnknown(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
