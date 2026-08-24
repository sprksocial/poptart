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
mixin _$UAdminUpdateSubjectStatusOutputSubject {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminUpdateSubjectStatusOutputSubject&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'UAdminUpdateSubjectStatusOutputSubject(data: $data)';
}


}

/// @nodoc
class $UAdminUpdateSubjectStatusOutputSubjectCopyWith<$Res>  {
$UAdminUpdateSubjectStatusOutputSubjectCopyWith(UAdminUpdateSubjectStatusOutputSubject _, $Res Function(UAdminUpdateSubjectStatusOutputSubject) __);
}


/// Adds pattern-matching-related methods to [UAdminUpdateSubjectStatusOutputSubject].
extension UAdminUpdateSubjectStatusOutputSubjectPatterns on UAdminUpdateSubjectStatusOutputSubject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UAdminUpdateSubjectStatusOutputSubjectRepoRef value)?  repoRef,TResult Function( UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef value)?  repoStrongRef,TResult Function( UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef value)?  repoBlobRef,TResult Function( UAdminUpdateSubjectStatusOutputSubjectUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UAdminUpdateSubjectStatusOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that);case UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that);case UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that);case UAdminUpdateSubjectStatusOutputSubjectUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UAdminUpdateSubjectStatusOutputSubjectRepoRef value)  repoRef,required TResult Function( UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef value)  repoStrongRef,required TResult Function( UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef value)  repoBlobRef,required TResult Function( UAdminUpdateSubjectStatusOutputSubjectUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case UAdminUpdateSubjectStatusOutputSubjectRepoRef():
return repoRef(_that);case UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef():
return repoStrongRef(_that);case UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef():
return repoBlobRef(_that);case UAdminUpdateSubjectStatusOutputSubjectUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UAdminUpdateSubjectStatusOutputSubjectRepoRef value)?  repoRef,TResult? Function( UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef value)?  repoStrongRef,TResult? Function( UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef value)?  repoBlobRef,TResult? Function( UAdminUpdateSubjectStatusOutputSubjectUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case UAdminUpdateSubjectStatusOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that);case UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that);case UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that);case UAdminUpdateSubjectStatusOutputSubjectUnknown() when unknown != null:
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
case UAdminUpdateSubjectStatusOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that.data);case UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that.data);case UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that.data);case UAdminUpdateSubjectStatusOutputSubjectUnknown() when unknown != null:
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
case UAdminUpdateSubjectStatusOutputSubjectRepoRef():
return repoRef(_that.data);case UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef():
return repoStrongRef(_that.data);case UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef():
return repoBlobRef(_that.data);case UAdminUpdateSubjectStatusOutputSubjectUnknown():
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
case UAdminUpdateSubjectStatusOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that.data);case UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that.data);case UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef() when repoBlobRef != null:
return repoBlobRef(_that.data);case UAdminUpdateSubjectStatusOutputSubjectUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class UAdminUpdateSubjectStatusOutputSubjectRepoRef extends UAdminUpdateSubjectStatusOutputSubject {
  const UAdminUpdateSubjectStatusOutputSubjectRepoRef({required this.data}): super._();
  

@override final  RepoRef data;

/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminUpdateSubjectStatusOutputSubjectRepoRefCopyWith<UAdminUpdateSubjectStatusOutputSubjectRepoRef> get copyWith => _$UAdminUpdateSubjectStatusOutputSubjectRepoRefCopyWithImpl<UAdminUpdateSubjectStatusOutputSubjectRepoRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminUpdateSubjectStatusOutputSubjectRepoRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UAdminUpdateSubjectStatusOutputSubject.repoRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminUpdateSubjectStatusOutputSubjectRepoRefCopyWith<$Res> implements $UAdminUpdateSubjectStatusOutputSubjectCopyWith<$Res> {
  factory $UAdminUpdateSubjectStatusOutputSubjectRepoRefCopyWith(UAdminUpdateSubjectStatusOutputSubjectRepoRef value, $Res Function(UAdminUpdateSubjectStatusOutputSubjectRepoRef) _then) = _$UAdminUpdateSubjectStatusOutputSubjectRepoRefCopyWithImpl;
@useResult
$Res call({
 RepoRef data
});


$RepoRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UAdminUpdateSubjectStatusOutputSubjectRepoRefCopyWithImpl<$Res>
    implements $UAdminUpdateSubjectStatusOutputSubjectRepoRefCopyWith<$Res> {
  _$UAdminUpdateSubjectStatusOutputSubjectRepoRefCopyWithImpl(this._self, this._then);

  final UAdminUpdateSubjectStatusOutputSubjectRepoRef _self;
  final $Res Function(UAdminUpdateSubjectStatusOutputSubjectRepoRef) _then;

/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminUpdateSubjectStatusOutputSubjectRepoRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoRef,
  ));
}

/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
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


class UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef extends UAdminUpdateSubjectStatusOutputSubject {
  const UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef({required this.data}): super._();
  

@override final  RepoStrongRef data;

/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminUpdateSubjectStatusOutputSubjectRepoStrongRefCopyWith<UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef> get copyWith => _$UAdminUpdateSubjectStatusOutputSubjectRepoStrongRefCopyWithImpl<UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UAdminUpdateSubjectStatusOutputSubject.repoStrongRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminUpdateSubjectStatusOutputSubjectRepoStrongRefCopyWith<$Res> implements $UAdminUpdateSubjectStatusOutputSubjectCopyWith<$Res> {
  factory $UAdminUpdateSubjectStatusOutputSubjectRepoStrongRefCopyWith(UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef value, $Res Function(UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef) _then) = _$UAdminUpdateSubjectStatusOutputSubjectRepoStrongRefCopyWithImpl;
@useResult
$Res call({
 RepoStrongRef data
});


$RepoStrongRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UAdminUpdateSubjectStatusOutputSubjectRepoStrongRefCopyWithImpl<$Res>
    implements $UAdminUpdateSubjectStatusOutputSubjectRepoStrongRefCopyWith<$Res> {
  _$UAdminUpdateSubjectStatusOutputSubjectRepoStrongRefCopyWithImpl(this._self, this._then);

  final UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef _self;
  final $Res Function(UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef) _then;

/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminUpdateSubjectStatusOutputSubjectRepoStrongRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoStrongRef,
  ));
}

/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
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


class UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef extends UAdminUpdateSubjectStatusOutputSubject {
  const UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef({required this.data}): super._();
  

@override final  RepoBlobRef data;

/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminUpdateSubjectStatusOutputSubjectRepoBlobRefCopyWith<UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef> get copyWith => _$UAdminUpdateSubjectStatusOutputSubjectRepoBlobRefCopyWithImpl<UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UAdminUpdateSubjectStatusOutputSubject.repoBlobRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminUpdateSubjectStatusOutputSubjectRepoBlobRefCopyWith<$Res> implements $UAdminUpdateSubjectStatusOutputSubjectCopyWith<$Res> {
  factory $UAdminUpdateSubjectStatusOutputSubjectRepoBlobRefCopyWith(UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef value, $Res Function(UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef) _then) = _$UAdminUpdateSubjectStatusOutputSubjectRepoBlobRefCopyWithImpl;
@useResult
$Res call({
 RepoBlobRef data
});


$RepoBlobRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UAdminUpdateSubjectStatusOutputSubjectRepoBlobRefCopyWithImpl<$Res>
    implements $UAdminUpdateSubjectStatusOutputSubjectRepoBlobRefCopyWith<$Res> {
  _$UAdminUpdateSubjectStatusOutputSubjectRepoBlobRefCopyWithImpl(this._self, this._then);

  final UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef _self;
  final $Res Function(UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef) _then;

/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminUpdateSubjectStatusOutputSubjectRepoBlobRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoBlobRef,
  ));
}

/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
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


class UAdminUpdateSubjectStatusOutputSubjectUnknown extends UAdminUpdateSubjectStatusOutputSubject {
  const UAdminUpdateSubjectStatusOutputSubjectUnknown({required final  Map<String, dynamic> data}): _data = data,super._();
  

 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UAdminUpdateSubjectStatusOutputSubjectUnknownCopyWith<UAdminUpdateSubjectStatusOutputSubjectUnknown> get copyWith => _$UAdminUpdateSubjectStatusOutputSubjectUnknownCopyWithImpl<UAdminUpdateSubjectStatusOutputSubjectUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UAdminUpdateSubjectStatusOutputSubjectUnknown&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'UAdminUpdateSubjectStatusOutputSubject.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $UAdminUpdateSubjectStatusOutputSubjectUnknownCopyWith<$Res> implements $UAdminUpdateSubjectStatusOutputSubjectCopyWith<$Res> {
  factory $UAdminUpdateSubjectStatusOutputSubjectUnknownCopyWith(UAdminUpdateSubjectStatusOutputSubjectUnknown value, $Res Function(UAdminUpdateSubjectStatusOutputSubjectUnknown) _then) = _$UAdminUpdateSubjectStatusOutputSubjectUnknownCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$UAdminUpdateSubjectStatusOutputSubjectUnknownCopyWithImpl<$Res>
    implements $UAdminUpdateSubjectStatusOutputSubjectUnknownCopyWith<$Res> {
  _$UAdminUpdateSubjectStatusOutputSubjectUnknownCopyWithImpl(this._self, this._then);

  final UAdminUpdateSubjectStatusOutputSubjectUnknown _self;
  final $Res Function(UAdminUpdateSubjectStatusOutputSubjectUnknown) _then;

/// Create a copy of UAdminUpdateSubjectStatusOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UAdminUpdateSubjectStatusOutputSubjectUnknown(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
