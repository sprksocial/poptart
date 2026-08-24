// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'union_main_input_subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UAdminUpdateSubjectStatusInputSubject {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminUpdateSubjectStatusInputSubject&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'UAdminUpdateSubjectStatusInputSubject(data: $data)';
}


}

/// @nodoc
class $UAdminUpdateSubjectStatusInputSubjectCopyWith<$Res>  {
$UAdminUpdateSubjectStatusInputSubjectCopyWith(UAdminUpdateSubjectStatusInputSubject _, $Res Function(UAdminUpdateSubjectStatusInputSubject) __);
}


/// Adds pattern-matching-related methods to [UAdminUpdateSubjectStatusInputSubject].
extension UAdminUpdateSubjectStatusInputSubjectPatterns on UAdminUpdateSubjectStatusInputSubject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UAdminUpdateSubjectStatusInputSubjectRepoRef value)?  repoRef,TResult Function( UAdminUpdateSubjectStatusInputSubjectRepoStrongRef value)?  repoStrongRef,TResult Function( UAdminUpdateSubjectStatusInputSubjectRepoBlobRef value)?  repoBlobRef,TResult Function( UAdminUpdateSubjectStatusInputSubjectUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UAdminUpdateSubjectStatusInputSubjectRepoRef() when repoRef != null:
return repoRef(_that);case UAdminUpdateSubjectStatusInputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that);case UAdminUpdateSubjectStatusInputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that);case UAdminUpdateSubjectStatusInputSubjectUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UAdminUpdateSubjectStatusInputSubjectRepoRef value)  repoRef,required TResult Function( UAdminUpdateSubjectStatusInputSubjectRepoStrongRef value)  repoStrongRef,required TResult Function( UAdminUpdateSubjectStatusInputSubjectRepoBlobRef value)  repoBlobRef,required TResult Function( UAdminUpdateSubjectStatusInputSubjectUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case UAdminUpdateSubjectStatusInputSubjectRepoRef():
return repoRef(_that);case UAdminUpdateSubjectStatusInputSubjectRepoStrongRef():
return repoStrongRef(_that);case UAdminUpdateSubjectStatusInputSubjectRepoBlobRef():
return repoBlobRef(_that);case UAdminUpdateSubjectStatusInputSubjectUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UAdminUpdateSubjectStatusInputSubjectRepoRef value)?  repoRef,TResult? Function( UAdminUpdateSubjectStatusInputSubjectRepoStrongRef value)?  repoStrongRef,TResult? Function( UAdminUpdateSubjectStatusInputSubjectRepoBlobRef value)?  repoBlobRef,TResult? Function( UAdminUpdateSubjectStatusInputSubjectUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case UAdminUpdateSubjectStatusInputSubjectRepoRef() when repoRef != null:
return repoRef(_that);case UAdminUpdateSubjectStatusInputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that);case UAdminUpdateSubjectStatusInputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that);case UAdminUpdateSubjectStatusInputSubjectUnknown() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RepoRef data)?  repoRef,TResult Function( RepoStrongRef data)?  repoStrongRef,TResult Function( RepoBlobRef data)?  repoBlobRef,TResult Function( Map<String, dynamic> data)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UAdminUpdateSubjectStatusInputSubjectRepoRef() when repoRef != null:
return repoRef(_that.data);case UAdminUpdateSubjectStatusInputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that.data);case UAdminUpdateSubjectStatusInputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that.data);case UAdminUpdateSubjectStatusInputSubjectUnknown() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RepoRef data)  repoRef,required TResult Function( RepoStrongRef data)  repoStrongRef,required TResult Function( RepoBlobRef data)  repoBlobRef,required TResult Function( Map<String, dynamic> data)  unknown,}) {final _that = this;
switch (_that) {
case UAdminUpdateSubjectStatusInputSubjectRepoRef():
return repoRef(_that.data);case UAdminUpdateSubjectStatusInputSubjectRepoStrongRef():
return repoStrongRef(_that.data);case UAdminUpdateSubjectStatusInputSubjectRepoBlobRef():
return repoBlobRef(_that.data);case UAdminUpdateSubjectStatusInputSubjectUnknown():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RepoRef data)?  repoRef,TResult? Function( RepoStrongRef data)?  repoStrongRef,TResult? Function( RepoBlobRef data)?  repoBlobRef,TResult? Function( Map<String, dynamic> data)?  unknown,}) {final _that = this;
switch (_that) {
case UAdminUpdateSubjectStatusInputSubjectRepoRef() when repoRef != null:
return repoRef(_that.data);case UAdminUpdateSubjectStatusInputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that.data);case UAdminUpdateSubjectStatusInputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that.data);case UAdminUpdateSubjectStatusInputSubjectUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class UAdminUpdateSubjectStatusInputSubjectRepoRef extends UAdminUpdateSubjectStatusInputSubject {
  const UAdminUpdateSubjectStatusInputSubjectRepoRef({required this.data}): super._();
  

@override final  RepoRef data;

/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminUpdateSubjectStatusInputSubjectRepoRefCopyWith<UAdminUpdateSubjectStatusInputSubjectRepoRef> get copyWith => _$UAdminUpdateSubjectStatusInputSubjectRepoRefCopyWithImpl<UAdminUpdateSubjectStatusInputSubjectRepoRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminUpdateSubjectStatusInputSubjectRepoRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UAdminUpdateSubjectStatusInputSubject.repoRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminUpdateSubjectStatusInputSubjectRepoRefCopyWith<$Res> implements $UAdminUpdateSubjectStatusInputSubjectCopyWith<$Res> {
  factory $UAdminUpdateSubjectStatusInputSubjectRepoRefCopyWith(UAdminUpdateSubjectStatusInputSubjectRepoRef value, $Res Function(UAdminUpdateSubjectStatusInputSubjectRepoRef) _then) = _$UAdminUpdateSubjectStatusInputSubjectRepoRefCopyWithImpl;
@useResult
$Res call({
 RepoRef data
});


$RepoRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UAdminUpdateSubjectStatusInputSubjectRepoRefCopyWithImpl<$Res>
    implements $UAdminUpdateSubjectStatusInputSubjectRepoRefCopyWith<$Res> {
  _$UAdminUpdateSubjectStatusInputSubjectRepoRefCopyWithImpl(this._self, this._then);

  final UAdminUpdateSubjectStatusInputSubjectRepoRef _self;
  final $Res Function(UAdminUpdateSubjectStatusInputSubjectRepoRef) _then;

/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminUpdateSubjectStatusInputSubjectRepoRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoRef,
  ));
}

/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepoRefCopyWith<$Res> get data {
  
  return $RepoRefCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class UAdminUpdateSubjectStatusInputSubjectRepoStrongRef extends UAdminUpdateSubjectStatusInputSubject {
  const UAdminUpdateSubjectStatusInputSubjectRepoStrongRef({required this.data}): super._();
  

@override final  RepoStrongRef data;

/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminUpdateSubjectStatusInputSubjectRepoStrongRefCopyWith<UAdminUpdateSubjectStatusInputSubjectRepoStrongRef> get copyWith => _$UAdminUpdateSubjectStatusInputSubjectRepoStrongRefCopyWithImpl<UAdminUpdateSubjectStatusInputSubjectRepoStrongRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminUpdateSubjectStatusInputSubjectRepoStrongRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UAdminUpdateSubjectStatusInputSubject.repoStrongRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminUpdateSubjectStatusInputSubjectRepoStrongRefCopyWith<$Res> implements $UAdminUpdateSubjectStatusInputSubjectCopyWith<$Res> {
  factory $UAdminUpdateSubjectStatusInputSubjectRepoStrongRefCopyWith(UAdminUpdateSubjectStatusInputSubjectRepoStrongRef value, $Res Function(UAdminUpdateSubjectStatusInputSubjectRepoStrongRef) _then) = _$UAdminUpdateSubjectStatusInputSubjectRepoStrongRefCopyWithImpl;
@useResult
$Res call({
 RepoStrongRef data
});


$RepoStrongRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UAdminUpdateSubjectStatusInputSubjectRepoStrongRefCopyWithImpl<$Res>
    implements $UAdminUpdateSubjectStatusInputSubjectRepoStrongRefCopyWith<$Res> {
  _$UAdminUpdateSubjectStatusInputSubjectRepoStrongRefCopyWithImpl(this._self, this._then);

  final UAdminUpdateSubjectStatusInputSubjectRepoStrongRef _self;
  final $Res Function(UAdminUpdateSubjectStatusInputSubjectRepoStrongRef) _then;

/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminUpdateSubjectStatusInputSubjectRepoStrongRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoStrongRef,
  ));
}

/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepoStrongRefCopyWith<$Res> get data {
  
  return $RepoStrongRefCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class UAdminUpdateSubjectStatusInputSubjectRepoBlobRef extends UAdminUpdateSubjectStatusInputSubject {
  const UAdminUpdateSubjectStatusInputSubjectRepoBlobRef({required this.data}): super._();
  

@override final  RepoBlobRef data;

/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminUpdateSubjectStatusInputSubjectRepoBlobRefCopyWith<UAdminUpdateSubjectStatusInputSubjectRepoBlobRef> get copyWith => _$UAdminUpdateSubjectStatusInputSubjectRepoBlobRefCopyWithImpl<UAdminUpdateSubjectStatusInputSubjectRepoBlobRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminUpdateSubjectStatusInputSubjectRepoBlobRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UAdminUpdateSubjectStatusInputSubject.repoBlobRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminUpdateSubjectStatusInputSubjectRepoBlobRefCopyWith<$Res> implements $UAdminUpdateSubjectStatusInputSubjectCopyWith<$Res> {
  factory $UAdminUpdateSubjectStatusInputSubjectRepoBlobRefCopyWith(UAdminUpdateSubjectStatusInputSubjectRepoBlobRef value, $Res Function(UAdminUpdateSubjectStatusInputSubjectRepoBlobRef) _then) = _$UAdminUpdateSubjectStatusInputSubjectRepoBlobRefCopyWithImpl;
@useResult
$Res call({
 RepoBlobRef data
});


$RepoBlobRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UAdminUpdateSubjectStatusInputSubjectRepoBlobRefCopyWithImpl<$Res>
    implements $UAdminUpdateSubjectStatusInputSubjectRepoBlobRefCopyWith<$Res> {
  _$UAdminUpdateSubjectStatusInputSubjectRepoBlobRefCopyWithImpl(this._self, this._then);

  final UAdminUpdateSubjectStatusInputSubjectRepoBlobRef _self;
  final $Res Function(UAdminUpdateSubjectStatusInputSubjectRepoBlobRef) _then;

/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminUpdateSubjectStatusInputSubjectRepoBlobRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoBlobRef,
  ));
}

/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepoBlobRefCopyWith<$Res> get data {
  
  return $RepoBlobRefCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class UAdminUpdateSubjectStatusInputSubjectUnknown extends UAdminUpdateSubjectStatusInputSubject {
  const UAdminUpdateSubjectStatusInputSubjectUnknown({required final  Map<String, dynamic> data}): _data = data,super._();
  

 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminUpdateSubjectStatusInputSubjectUnknownCopyWith<UAdminUpdateSubjectStatusInputSubjectUnknown> get copyWith => _$UAdminUpdateSubjectStatusInputSubjectUnknownCopyWithImpl<UAdminUpdateSubjectStatusInputSubjectUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminUpdateSubjectStatusInputSubjectUnknown&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'UAdminUpdateSubjectStatusInputSubject.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminUpdateSubjectStatusInputSubjectUnknownCopyWith<$Res> implements $UAdminUpdateSubjectStatusInputSubjectCopyWith<$Res> {
  factory $UAdminUpdateSubjectStatusInputSubjectUnknownCopyWith(UAdminUpdateSubjectStatusInputSubjectUnknown value, $Res Function(UAdminUpdateSubjectStatusInputSubjectUnknown) _then) = _$UAdminUpdateSubjectStatusInputSubjectUnknownCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$UAdminUpdateSubjectStatusInputSubjectUnknownCopyWithImpl<$Res>
    implements $UAdminUpdateSubjectStatusInputSubjectUnknownCopyWith<$Res> {
  _$UAdminUpdateSubjectStatusInputSubjectUnknownCopyWithImpl(this._self, this._then);

  final UAdminUpdateSubjectStatusInputSubjectUnknown _self;
  final $Res Function(UAdminUpdateSubjectStatusInputSubjectUnknown) _then;

/// Create a copy of UAdminUpdateSubjectStatusInputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminUpdateSubjectStatusInputSubjectUnknown(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
