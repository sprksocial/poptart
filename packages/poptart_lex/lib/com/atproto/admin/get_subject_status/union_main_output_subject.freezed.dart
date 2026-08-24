// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'union_main_output_subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UAdminGetSubjectStatusOutputSubject {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminGetSubjectStatusOutputSubject&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'UAdminGetSubjectStatusOutputSubject(data: $data)';
}


}

/// @nodoc
class $UAdminGetSubjectStatusOutputSubjectCopyWith<$Res>  {
$UAdminGetSubjectStatusOutputSubjectCopyWith(UAdminGetSubjectStatusOutputSubject _, $Res Function(UAdminGetSubjectStatusOutputSubject) __);
}


/// Adds pattern-matching-related methods to [UAdminGetSubjectStatusOutputSubject].
extension UAdminGetSubjectStatusOutputSubjectPatterns on UAdminGetSubjectStatusOutputSubject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UAdminGetSubjectStatusOutputSubjectRepoRef value)?  repoRef,TResult Function( UAdminGetSubjectStatusOutputSubjectRepoStrongRef value)?  repoStrongRef,TResult Function( UAdminGetSubjectStatusOutputSubjectRepoBlobRef value)?  repoBlobRef,TResult Function( UAdminGetSubjectStatusOutputSubjectUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UAdminGetSubjectStatusOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that);case UAdminGetSubjectStatusOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that);case UAdminGetSubjectStatusOutputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that);case UAdminGetSubjectStatusOutputSubjectUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UAdminGetSubjectStatusOutputSubjectRepoRef value)  repoRef,required TResult Function( UAdminGetSubjectStatusOutputSubjectRepoStrongRef value)  repoStrongRef,required TResult Function( UAdminGetSubjectStatusOutputSubjectRepoBlobRef value)  repoBlobRef,required TResult Function( UAdminGetSubjectStatusOutputSubjectUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case UAdminGetSubjectStatusOutputSubjectRepoRef():
return repoRef(_that);case UAdminGetSubjectStatusOutputSubjectRepoStrongRef():
return repoStrongRef(_that);case UAdminGetSubjectStatusOutputSubjectRepoBlobRef():
return repoBlobRef(_that);case UAdminGetSubjectStatusOutputSubjectUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UAdminGetSubjectStatusOutputSubjectRepoRef value)?  repoRef,TResult? Function( UAdminGetSubjectStatusOutputSubjectRepoStrongRef value)?  repoStrongRef,TResult? Function( UAdminGetSubjectStatusOutputSubjectRepoBlobRef value)?  repoBlobRef,TResult? Function( UAdminGetSubjectStatusOutputSubjectUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case UAdminGetSubjectStatusOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that);case UAdminGetSubjectStatusOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that);case UAdminGetSubjectStatusOutputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that);case UAdminGetSubjectStatusOutputSubjectUnknown() when unknown != null:
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
case UAdminGetSubjectStatusOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that.data);case UAdminGetSubjectStatusOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that.data);case UAdminGetSubjectStatusOutputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that.data);case UAdminGetSubjectStatusOutputSubjectUnknown() when unknown != null:
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
case UAdminGetSubjectStatusOutputSubjectRepoRef():
return repoRef(_that.data);case UAdminGetSubjectStatusOutputSubjectRepoStrongRef():
return repoStrongRef(_that.data);case UAdminGetSubjectStatusOutputSubjectRepoBlobRef():
return repoBlobRef(_that.data);case UAdminGetSubjectStatusOutputSubjectUnknown():
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
case UAdminGetSubjectStatusOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that.data);case UAdminGetSubjectStatusOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that.data);case UAdminGetSubjectStatusOutputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that.data);case UAdminGetSubjectStatusOutputSubjectUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class UAdminGetSubjectStatusOutputSubjectRepoRef extends UAdminGetSubjectStatusOutputSubject {
  const UAdminGetSubjectStatusOutputSubjectRepoRef({required this.data}): super._();
  

@override final  RepoRef data;

/// Create a copy of UAdminGetSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminGetSubjectStatusOutputSubjectRepoRefCopyWith<UAdminGetSubjectStatusOutputSubjectRepoRef> get copyWith => _$UAdminGetSubjectStatusOutputSubjectRepoRefCopyWithImpl<UAdminGetSubjectStatusOutputSubjectRepoRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminGetSubjectStatusOutputSubjectRepoRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UAdminGetSubjectStatusOutputSubject.repoRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminGetSubjectStatusOutputSubjectRepoRefCopyWith<$Res> implements $UAdminGetSubjectStatusOutputSubjectCopyWith<$Res> {
  factory $UAdminGetSubjectStatusOutputSubjectRepoRefCopyWith(UAdminGetSubjectStatusOutputSubjectRepoRef value, $Res Function(UAdminGetSubjectStatusOutputSubjectRepoRef) _then) = _$UAdminGetSubjectStatusOutputSubjectRepoRefCopyWithImpl;
@useResult
$Res call({
 RepoRef data
});


$RepoRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UAdminGetSubjectStatusOutputSubjectRepoRefCopyWithImpl<$Res>
    implements $UAdminGetSubjectStatusOutputSubjectRepoRefCopyWith<$Res> {
  _$UAdminGetSubjectStatusOutputSubjectRepoRefCopyWithImpl(this._self, this._then);

  final UAdminGetSubjectStatusOutputSubjectRepoRef _self;
  final $Res Function(UAdminGetSubjectStatusOutputSubjectRepoRef) _then;

/// Create a copy of UAdminGetSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminGetSubjectStatusOutputSubjectRepoRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoRef,
  ));
}

/// Create a copy of UAdminGetSubjectStatusOutputSubject
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


class UAdminGetSubjectStatusOutputSubjectRepoStrongRef extends UAdminGetSubjectStatusOutputSubject {
  const UAdminGetSubjectStatusOutputSubjectRepoStrongRef({required this.data}): super._();
  

@override final  RepoStrongRef data;

/// Create a copy of UAdminGetSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminGetSubjectStatusOutputSubjectRepoStrongRefCopyWith<UAdminGetSubjectStatusOutputSubjectRepoStrongRef> get copyWith => _$UAdminGetSubjectStatusOutputSubjectRepoStrongRefCopyWithImpl<UAdminGetSubjectStatusOutputSubjectRepoStrongRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminGetSubjectStatusOutputSubjectRepoStrongRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UAdminGetSubjectStatusOutputSubject.repoStrongRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminGetSubjectStatusOutputSubjectRepoStrongRefCopyWith<$Res> implements $UAdminGetSubjectStatusOutputSubjectCopyWith<$Res> {
  factory $UAdminGetSubjectStatusOutputSubjectRepoStrongRefCopyWith(UAdminGetSubjectStatusOutputSubjectRepoStrongRef value, $Res Function(UAdminGetSubjectStatusOutputSubjectRepoStrongRef) _then) = _$UAdminGetSubjectStatusOutputSubjectRepoStrongRefCopyWithImpl;
@useResult
$Res call({
 RepoStrongRef data
});


$RepoStrongRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UAdminGetSubjectStatusOutputSubjectRepoStrongRefCopyWithImpl<$Res>
    implements $UAdminGetSubjectStatusOutputSubjectRepoStrongRefCopyWith<$Res> {
  _$UAdminGetSubjectStatusOutputSubjectRepoStrongRefCopyWithImpl(this._self, this._then);

  final UAdminGetSubjectStatusOutputSubjectRepoStrongRef _self;
  final $Res Function(UAdminGetSubjectStatusOutputSubjectRepoStrongRef) _then;

/// Create a copy of UAdminGetSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminGetSubjectStatusOutputSubjectRepoStrongRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoStrongRef,
  ));
}

/// Create a copy of UAdminGetSubjectStatusOutputSubject
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


class UAdminGetSubjectStatusOutputSubjectRepoBlobRef extends UAdminGetSubjectStatusOutputSubject {
  const UAdminGetSubjectStatusOutputSubjectRepoBlobRef({required this.data}): super._();
  

@override final  RepoBlobRef data;

/// Create a copy of UAdminGetSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminGetSubjectStatusOutputSubjectRepoBlobRefCopyWith<UAdminGetSubjectStatusOutputSubjectRepoBlobRef> get copyWith => _$UAdminGetSubjectStatusOutputSubjectRepoBlobRefCopyWithImpl<UAdminGetSubjectStatusOutputSubjectRepoBlobRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminGetSubjectStatusOutputSubjectRepoBlobRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UAdminGetSubjectStatusOutputSubject.repoBlobRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminGetSubjectStatusOutputSubjectRepoBlobRefCopyWith<$Res> implements $UAdminGetSubjectStatusOutputSubjectCopyWith<$Res> {
  factory $UAdminGetSubjectStatusOutputSubjectRepoBlobRefCopyWith(UAdminGetSubjectStatusOutputSubjectRepoBlobRef value, $Res Function(UAdminGetSubjectStatusOutputSubjectRepoBlobRef) _then) = _$UAdminGetSubjectStatusOutputSubjectRepoBlobRefCopyWithImpl;
@useResult
$Res call({
 RepoBlobRef data
});


$RepoBlobRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UAdminGetSubjectStatusOutputSubjectRepoBlobRefCopyWithImpl<$Res>
    implements $UAdminGetSubjectStatusOutputSubjectRepoBlobRefCopyWith<$Res> {
  _$UAdminGetSubjectStatusOutputSubjectRepoBlobRefCopyWithImpl(this._self, this._then);

  final UAdminGetSubjectStatusOutputSubjectRepoBlobRef _self;
  final $Res Function(UAdminGetSubjectStatusOutputSubjectRepoBlobRef) _then;

/// Create a copy of UAdminGetSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminGetSubjectStatusOutputSubjectRepoBlobRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoBlobRef,
  ));
}

/// Create a copy of UAdminGetSubjectStatusOutputSubject
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


class UAdminGetSubjectStatusOutputSubjectUnknown extends UAdminGetSubjectStatusOutputSubject {
  const UAdminGetSubjectStatusOutputSubjectUnknown({required final  Map<String, dynamic> data}): _data = data,super._();
  

 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of UAdminGetSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminGetSubjectStatusOutputSubjectUnknownCopyWith<UAdminGetSubjectStatusOutputSubjectUnknown> get copyWith => _$UAdminGetSubjectStatusOutputSubjectUnknownCopyWithImpl<UAdminGetSubjectStatusOutputSubjectUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminGetSubjectStatusOutputSubjectUnknown&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'UAdminGetSubjectStatusOutputSubject.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminGetSubjectStatusOutputSubjectUnknownCopyWith<$Res> implements $UAdminGetSubjectStatusOutputSubjectCopyWith<$Res> {
  factory $UAdminGetSubjectStatusOutputSubjectUnknownCopyWith(UAdminGetSubjectStatusOutputSubjectUnknown value, $Res Function(UAdminGetSubjectStatusOutputSubjectUnknown) _then) = _$UAdminGetSubjectStatusOutputSubjectUnknownCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$UAdminGetSubjectStatusOutputSubjectUnknownCopyWithImpl<$Res>
    implements $UAdminGetSubjectStatusOutputSubjectUnknownCopyWith<$Res> {
  _$UAdminGetSubjectStatusOutputSubjectUnknownCopyWithImpl(this._self, this._then);

  final UAdminGetSubjectStatusOutputSubjectUnknown _self;
  final $Res Function(UAdminGetSubjectStatusOutputSubjectUnknown) _then;

/// Create a copy of UAdminGetSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminGetSubjectStatusOutputSubjectUnknown(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
