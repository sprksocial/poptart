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
mixin _$ServerGetSessionOutputStatus {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerGetSessionOutputStatus&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ServerGetSessionOutputStatus(data: $data)';
}


}

/// @nodoc
class $ServerGetSessionOutputStatusCopyWith<$Res>  {
$ServerGetSessionOutputStatusCopyWith(ServerGetSessionOutputStatus _, $Res Function(ServerGetSessionOutputStatus) __);
}


/// Adds pattern-matching-related methods to [ServerGetSessionOutputStatus].
extension ServerGetSessionOutputStatusPatterns on ServerGetSessionOutputStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerGetSessionOutputStatusKnownValue value)?  knownValue,TResult Function( ServerGetSessionOutputStatusUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerGetSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that);case ServerGetSessionOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerGetSessionOutputStatusKnownValue value)  knownValue,required TResult Function( ServerGetSessionOutputStatusUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case ServerGetSessionOutputStatusKnownValue():
return knownValue(_that);case ServerGetSessionOutputStatusUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerGetSessionOutputStatusKnownValue value)?  knownValue,TResult? Function( ServerGetSessionOutputStatusUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case ServerGetSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that);case ServerGetSessionOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( KnownServerGetSessionOutputStatus data)?  knownValue,TResult Function( String data)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerGetSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that.data);case ServerGetSessionOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( KnownServerGetSessionOutputStatus data)  knownValue,required TResult Function( String data)  unknown,}) {final _that = this;
switch (_that) {
case ServerGetSessionOutputStatusKnownValue():
return knownValue(_that.data);case ServerGetSessionOutputStatusUnknown():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( KnownServerGetSessionOutputStatus data)?  knownValue,TResult? Function( String data)?  unknown,}) {final _that = this;
switch (_that) {
case ServerGetSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that.data);case ServerGetSessionOutputStatusUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class ServerGetSessionOutputStatusKnownValue extends ServerGetSessionOutputStatus {
  const ServerGetSessionOutputStatusKnownValue({required this.data}): super._();
  

@override final  KnownServerGetSessionOutputStatus data;

/// Create a copy of ServerGetSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerGetSessionOutputStatusKnownValueCopyWith<ServerGetSessionOutputStatusKnownValue> get copyWith => _$ServerGetSessionOutputStatusKnownValueCopyWithImpl<ServerGetSessionOutputStatusKnownValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerGetSessionOutputStatusKnownValue&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ServerGetSessionOutputStatus.knownValue(data: $data)';
}


}

/// @nodoc
abstract mixin class $ServerGetSessionOutputStatusKnownValueCopyWith<$Res> implements $ServerGetSessionOutputStatusCopyWith<$Res> {
  factory $ServerGetSessionOutputStatusKnownValueCopyWith(ServerGetSessionOutputStatusKnownValue value, $Res Function(ServerGetSessionOutputStatusKnownValue) _then) = _$ServerGetSessionOutputStatusKnownValueCopyWithImpl;
@useResult
$Res call({
 KnownServerGetSessionOutputStatus data
});




}
/// @nodoc
class _$ServerGetSessionOutputStatusKnownValueCopyWithImpl<$Res>
    implements $ServerGetSessionOutputStatusKnownValueCopyWith<$Res> {
  _$ServerGetSessionOutputStatusKnownValueCopyWithImpl(this._self, this._then);

  final ServerGetSessionOutputStatusKnownValue _self;
  final $Res Function(ServerGetSessionOutputStatusKnownValue) _then;

/// Create a copy of ServerGetSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ServerGetSessionOutputStatusKnownValue(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as KnownServerGetSessionOutputStatus,
  ));
}


}

/// @nodoc


class ServerGetSessionOutputStatusUnknown extends ServerGetSessionOutputStatus {
  const ServerGetSessionOutputStatusUnknown({required this.data}): super._();
  

@override final  String data;

/// Create a copy of ServerGetSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerGetSessionOutputStatusUnknownCopyWith<ServerGetSessionOutputStatusUnknown> get copyWith => _$ServerGetSessionOutputStatusUnknownCopyWithImpl<ServerGetSessionOutputStatusUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerGetSessionOutputStatusUnknown&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ServerGetSessionOutputStatus.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $ServerGetSessionOutputStatusUnknownCopyWith<$Res> implements $ServerGetSessionOutputStatusCopyWith<$Res> {
  factory $ServerGetSessionOutputStatusUnknownCopyWith(ServerGetSessionOutputStatusUnknown value, $Res Function(ServerGetSessionOutputStatusUnknown) _then) = _$ServerGetSessionOutputStatusUnknownCopyWithImpl;
@useResult
$Res call({
 String data
});




}
/// @nodoc
class _$ServerGetSessionOutputStatusUnknownCopyWithImpl<$Res>
    implements $ServerGetSessionOutputStatusUnknownCopyWith<$Res> {
  _$ServerGetSessionOutputStatusUnknownCopyWithImpl(this._self, this._then);

  final ServerGetSessionOutputStatusUnknown _self;
  final $Res Function(ServerGetSessionOutputStatusUnknown) _then;

/// Create a copy of ServerGetSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ServerGetSessionOutputStatusUnknown(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
