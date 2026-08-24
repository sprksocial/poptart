// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'union_main_input_writes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$URepoApplyWritesInputWrites {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URepoApplyWritesInputWrites&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'URepoApplyWritesInputWrites(data: $data)';
}


}

/// @nodoc
class $URepoApplyWritesInputWritesCopyWith<$Res>  {
$URepoApplyWritesInputWritesCopyWith(URepoApplyWritesInputWrites _, $Res Function(URepoApplyWritesInputWrites) __);
}


/// Adds pattern-matching-related methods to [URepoApplyWritesInputWrites].
extension URepoApplyWritesInputWritesPatterns on URepoApplyWritesInputWrites {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( URepoApplyWritesInputWritesCreate value)?  create,TResult Function( URepoApplyWritesInputWritesUpdate value)?  update,TResult Function( URepoApplyWritesInputWritesDelete value)?  delete,TResult Function( URepoApplyWritesInputWritesUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case URepoApplyWritesInputWritesCreate() when create != null:
return create(_that);case URepoApplyWritesInputWritesUpdate() when update != null:
return update(_that);case URepoApplyWritesInputWritesDelete() when delete != null:
return delete(_that);case URepoApplyWritesInputWritesUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( URepoApplyWritesInputWritesCreate value)  create,required TResult Function( URepoApplyWritesInputWritesUpdate value)  update,required TResult Function( URepoApplyWritesInputWritesDelete value)  delete,required TResult Function( URepoApplyWritesInputWritesUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case URepoApplyWritesInputWritesCreate():
return create(_that);case URepoApplyWritesInputWritesUpdate():
return update(_that);case URepoApplyWritesInputWritesDelete():
return delete(_that);case URepoApplyWritesInputWritesUnknown():
return unknown(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( URepoApplyWritesInputWritesCreate value)?  create,TResult? Function( URepoApplyWritesInputWritesUpdate value)?  update,TResult? Function( URepoApplyWritesInputWritesDelete value)?  delete,TResult? Function( URepoApplyWritesInputWritesUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case URepoApplyWritesInputWritesCreate() when create != null:
return create(_that);case URepoApplyWritesInputWritesUpdate() when update != null:
return update(_that);case URepoApplyWritesInputWritesDelete() when delete != null:
return delete(_that);case URepoApplyWritesInputWritesUnknown() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Create data)?  create,TResult Function( Update data)?  update,TResult Function( Delete data)?  delete,TResult Function( Map<String, dynamic> data)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case URepoApplyWritesInputWritesCreate() when create != null:
return create(_that.data);case URepoApplyWritesInputWritesUpdate() when update != null:
return update(_that.data);case URepoApplyWritesInputWritesDelete() when delete != null:
return delete(_that.data);case URepoApplyWritesInputWritesUnknown() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Create data)  create,required TResult Function( Update data)  update,required TResult Function( Delete data)  delete,required TResult Function( Map<String, dynamic> data)  unknown,}) {final _that = this;
switch (_that) {
case URepoApplyWritesInputWritesCreate():
return create(_that.data);case URepoApplyWritesInputWritesUpdate():
return update(_that.data);case URepoApplyWritesInputWritesDelete():
return delete(_that.data);case URepoApplyWritesInputWritesUnknown():
return unknown(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Create data)?  create,TResult? Function( Update data)?  update,TResult? Function( Delete data)?  delete,TResult? Function( Map<String, dynamic> data)?  unknown,}) {final _that = this;
switch (_that) {
case URepoApplyWritesInputWritesCreate() when create != null:
return create(_that.data);case URepoApplyWritesInputWritesUpdate() when update != null:
return update(_that.data);case URepoApplyWritesInputWritesDelete() when delete != null:
return delete(_that.data);case URepoApplyWritesInputWritesUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class URepoApplyWritesInputWritesCreate extends URepoApplyWritesInputWrites {
  const URepoApplyWritesInputWritesCreate({required this.data}): super._();
  

@override final  Create data;

/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$URepoApplyWritesInputWritesCreateCopyWith<URepoApplyWritesInputWritesCreate> get copyWith => _$URepoApplyWritesInputWritesCreateCopyWithImpl<URepoApplyWritesInputWritesCreate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URepoApplyWritesInputWritesCreate&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'URepoApplyWritesInputWrites.create(data: $data)';
}


}

/// @nodoc
abstract mixin class $URepoApplyWritesInputWritesCreateCopyWith<$Res> implements $URepoApplyWritesInputWritesCopyWith<$Res> {
  factory $URepoApplyWritesInputWritesCreateCopyWith(URepoApplyWritesInputWritesCreate value, $Res Function(URepoApplyWritesInputWritesCreate) _then) = _$URepoApplyWritesInputWritesCreateCopyWithImpl;
@useResult
$Res call({
 Create data
});


$CreateCopyWith<$Res> get data;

}
/// @nodoc
class _$URepoApplyWritesInputWritesCreateCopyWithImpl<$Res>
    implements $URepoApplyWritesInputWritesCreateCopyWith<$Res> {
  _$URepoApplyWritesInputWritesCreateCopyWithImpl(this._self, this._then);

  final URepoApplyWritesInputWritesCreate _self;
  final $Res Function(URepoApplyWritesInputWritesCreate) _then;

/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(URepoApplyWritesInputWritesCreate(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Create,
  ));
}

/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateCopyWith<$Res> get data {
  
  return $CreateCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class URepoApplyWritesInputWritesUpdate extends URepoApplyWritesInputWrites {
  const URepoApplyWritesInputWritesUpdate({required this.data}): super._();
  

@override final  Update data;

/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$URepoApplyWritesInputWritesUpdateCopyWith<URepoApplyWritesInputWritesUpdate> get copyWith => _$URepoApplyWritesInputWritesUpdateCopyWithImpl<URepoApplyWritesInputWritesUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URepoApplyWritesInputWritesUpdate&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'URepoApplyWritesInputWrites.update(data: $data)';
}


}

/// @nodoc
abstract mixin class $URepoApplyWritesInputWritesUpdateCopyWith<$Res> implements $URepoApplyWritesInputWritesCopyWith<$Res> {
  factory $URepoApplyWritesInputWritesUpdateCopyWith(URepoApplyWritesInputWritesUpdate value, $Res Function(URepoApplyWritesInputWritesUpdate) _then) = _$URepoApplyWritesInputWritesUpdateCopyWithImpl;
@useResult
$Res call({
 Update data
});


$UpdateCopyWith<$Res> get data;

}
/// @nodoc
class _$URepoApplyWritesInputWritesUpdateCopyWithImpl<$Res>
    implements $URepoApplyWritesInputWritesUpdateCopyWith<$Res> {
  _$URepoApplyWritesInputWritesUpdateCopyWithImpl(this._self, this._then);

  final URepoApplyWritesInputWritesUpdate _self;
  final $Res Function(URepoApplyWritesInputWritesUpdate) _then;

/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(URepoApplyWritesInputWritesUpdate(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Update,
  ));
}

/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateCopyWith<$Res> get data {
  
  return $UpdateCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class URepoApplyWritesInputWritesDelete extends URepoApplyWritesInputWrites {
  const URepoApplyWritesInputWritesDelete({required this.data}): super._();
  

@override final  Delete data;

/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$URepoApplyWritesInputWritesDeleteCopyWith<URepoApplyWritesInputWritesDelete> get copyWith => _$URepoApplyWritesInputWritesDeleteCopyWithImpl<URepoApplyWritesInputWritesDelete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URepoApplyWritesInputWritesDelete&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'URepoApplyWritesInputWrites.delete(data: $data)';
}


}

/// @nodoc
abstract mixin class $URepoApplyWritesInputWritesDeleteCopyWith<$Res> implements $URepoApplyWritesInputWritesCopyWith<$Res> {
  factory $URepoApplyWritesInputWritesDeleteCopyWith(URepoApplyWritesInputWritesDelete value, $Res Function(URepoApplyWritesInputWritesDelete) _then) = _$URepoApplyWritesInputWritesDeleteCopyWithImpl;
@useResult
$Res call({
 Delete data
});


$DeleteCopyWith<$Res> get data;

}
/// @nodoc
class _$URepoApplyWritesInputWritesDeleteCopyWithImpl<$Res>
    implements $URepoApplyWritesInputWritesDeleteCopyWith<$Res> {
  _$URepoApplyWritesInputWritesDeleteCopyWithImpl(this._self, this._then);

  final URepoApplyWritesInputWritesDelete _self;
  final $Res Function(URepoApplyWritesInputWritesDelete) _then;

/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(URepoApplyWritesInputWritesDelete(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Delete,
  ));
}

/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeleteCopyWith<$Res> get data {
  
  return $DeleteCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class URepoApplyWritesInputWritesUnknown extends URepoApplyWritesInputWrites {
  const URepoApplyWritesInputWritesUnknown({required final  Map<String, dynamic> data}): _data = data,super._();
  

 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$URepoApplyWritesInputWritesUnknownCopyWith<URepoApplyWritesInputWritesUnknown> get copyWith => _$URepoApplyWritesInputWritesUnknownCopyWithImpl<URepoApplyWritesInputWritesUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URepoApplyWritesInputWritesUnknown&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'URepoApplyWritesInputWrites.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $URepoApplyWritesInputWritesUnknownCopyWith<$Res> implements $URepoApplyWritesInputWritesCopyWith<$Res> {
  factory $URepoApplyWritesInputWritesUnknownCopyWith(URepoApplyWritesInputWritesUnknown value, $Res Function(URepoApplyWritesInputWritesUnknown) _then) = _$URepoApplyWritesInputWritesUnknownCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$URepoApplyWritesInputWritesUnknownCopyWithImpl<$Res>
    implements $URepoApplyWritesInputWritesUnknownCopyWith<$Res> {
  _$URepoApplyWritesInputWritesUnknownCopyWithImpl(this._self, this._then);

  final URepoApplyWritesInputWritesUnknown _self;
  final $Res Function(URepoApplyWritesInputWritesUnknown) _then;

/// Create a copy of URepoApplyWritesInputWrites
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(URepoApplyWritesInputWritesUnknown(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
