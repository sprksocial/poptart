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
mixin _$ServerCreateSessionOutputStatus {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerCreateSessionOutputStatus&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ServerCreateSessionOutputStatus(data: $data)';
}


}

/// @nodoc
class $ServerCreateSessionOutputStatusCopyWith<$Res>  {
$ServerCreateSessionOutputStatusCopyWith(ServerCreateSessionOutputStatus _, $Res Function(ServerCreateSessionOutputStatus) __);
}


/// Adds pattern-matching-related methods to [ServerCreateSessionOutputStatus].
extension ServerCreateSessionOutputStatusPatterns on ServerCreateSessionOutputStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerCreateSessionOutputStatusKnownValue value)?  knownValue,TResult Function( ServerCreateSessionOutputStatusUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerCreateSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that);case ServerCreateSessionOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerCreateSessionOutputStatusKnownValue value)  knownValue,required TResult Function( ServerCreateSessionOutputStatusUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case ServerCreateSessionOutputStatusKnownValue():
return knownValue(_that);case ServerCreateSessionOutputStatusUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerCreateSessionOutputStatusKnownValue value)?  knownValue,TResult? Function( ServerCreateSessionOutputStatusUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case ServerCreateSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that);case ServerCreateSessionOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( KnownServerCreateSessionOutputStatus data)?  knownValue,TResult Function( String data)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerCreateSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that.data);case ServerCreateSessionOutputStatusUnknown() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( KnownServerCreateSessionOutputStatus data)  knownValue,required TResult Function( String data)  unknown,}) {final _that = this;
switch (_that) {
case ServerCreateSessionOutputStatusKnownValue():
return knownValue(_that.data);case ServerCreateSessionOutputStatusUnknown():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( KnownServerCreateSessionOutputStatus data)?  knownValue,TResult? Function( String data)?  unknown,}) {final _that = this;
switch (_that) {
case ServerCreateSessionOutputStatusKnownValue() when knownValue != null:
return knownValue(_that.data);case ServerCreateSessionOutputStatusUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class ServerCreateSessionOutputStatusKnownValue extends ServerCreateSessionOutputStatus {
  const ServerCreateSessionOutputStatusKnownValue({required this.data}): super._();
  

@override final  KnownServerCreateSessionOutputStatus data;

/// Create a copy of ServerCreateSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerCreateSessionOutputStatusKnownValueCopyWith<ServerCreateSessionOutputStatusKnownValue> get copyWith => _$ServerCreateSessionOutputStatusKnownValueCopyWithImpl<ServerCreateSessionOutputStatusKnownValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerCreateSessionOutputStatusKnownValue&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ServerCreateSessionOutputStatus.knownValue(data: $data)';
}


}

/// @nodoc
abstract mixin class $ServerCreateSessionOutputStatusKnownValueCopyWith<$Res> implements $ServerCreateSessionOutputStatusCopyWith<$Res> {
  factory $ServerCreateSessionOutputStatusKnownValueCopyWith(ServerCreateSessionOutputStatusKnownValue value, $Res Function(ServerCreateSessionOutputStatusKnownValue) _then) = _$ServerCreateSessionOutputStatusKnownValueCopyWithImpl;
@useResult
$Res call({
 KnownServerCreateSessionOutputStatus data
});




}
/// @nodoc
class _$ServerCreateSessionOutputStatusKnownValueCopyWithImpl<$Res>
    implements $ServerCreateSessionOutputStatusKnownValueCopyWith<$Res> {
  _$ServerCreateSessionOutputStatusKnownValueCopyWithImpl(this._self, this._then);

  final ServerCreateSessionOutputStatusKnownValue _self;
  final $Res Function(ServerCreateSessionOutputStatusKnownValue) _then;

/// Create a copy of ServerCreateSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ServerCreateSessionOutputStatusKnownValue(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as KnownServerCreateSessionOutputStatus,
  ));
}


}

/// @nodoc


class ServerCreateSessionOutputStatusUnknown extends ServerCreateSessionOutputStatus {
  const ServerCreateSessionOutputStatusUnknown({required this.data}): super._();
  

@override final  String data;

/// Create a copy of ServerCreateSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerCreateSessionOutputStatusUnknownCopyWith<ServerCreateSessionOutputStatusUnknown> get copyWith => _$ServerCreateSessionOutputStatusUnknownCopyWithImpl<ServerCreateSessionOutputStatusUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerCreateSessionOutputStatusUnknown&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ServerCreateSessionOutputStatus.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $ServerCreateSessionOutputStatusUnknownCopyWith<$Res> implements $ServerCreateSessionOutputStatusCopyWith<$Res> {
  factory $ServerCreateSessionOutputStatusUnknownCopyWith(ServerCreateSessionOutputStatusUnknown value, $Res Function(ServerCreateSessionOutputStatusUnknown) _then) = _$ServerCreateSessionOutputStatusUnknownCopyWithImpl;
@useResult
$Res call({
 String data
});




}
/// @nodoc
class _$ServerCreateSessionOutputStatusUnknownCopyWithImpl<$Res>
    implements $ServerCreateSessionOutputStatusUnknownCopyWith<$Res> {
  _$ServerCreateSessionOutputStatusUnknownCopyWithImpl(this._self, this._then);

  final ServerCreateSessionOutputStatusUnknown _self;
  final $Res Function(ServerCreateSessionOutputStatusUnknown) _then;

/// Create a copy of ServerCreateSessionOutputStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ServerCreateSessionOutputStatusUnknown(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
