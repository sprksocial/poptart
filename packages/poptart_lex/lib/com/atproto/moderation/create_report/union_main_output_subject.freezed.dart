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
mixin _$UModerationCreateReportOutputSubject {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UModerationCreateReportOutputSubject&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'UModerationCreateReportOutputSubject(data: $data)';
}


}

/// @nodoc
class $UModerationCreateReportOutputSubjectCopyWith<$Res>  {
$UModerationCreateReportOutputSubjectCopyWith(UModerationCreateReportOutputSubject _, $Res Function(UModerationCreateReportOutputSubject) __);
}


/// Adds pattern-matching-related methods to [UModerationCreateReportOutputSubject].
extension UModerationCreateReportOutputSubjectPatterns on UModerationCreateReportOutputSubject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UModerationCreateReportOutputSubjectRepoRef value)?  repoRef,TResult Function( UModerationCreateReportOutputSubjectRepoStrongRef value)?  repoStrongRef,TResult Function( UModerationCreateReportOutputSubjectUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UModerationCreateReportOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that);case UModerationCreateReportOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that);case UModerationCreateReportOutputSubjectUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UModerationCreateReportOutputSubjectRepoRef value)  repoRef,required TResult Function( UModerationCreateReportOutputSubjectRepoStrongRef value)  repoStrongRef,required TResult Function( UModerationCreateReportOutputSubjectUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case UModerationCreateReportOutputSubjectRepoRef():
return repoRef(_that);case UModerationCreateReportOutputSubjectRepoStrongRef():
return repoStrongRef(_that);case UModerationCreateReportOutputSubjectUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UModerationCreateReportOutputSubjectRepoRef value)?  repoRef,TResult? Function( UModerationCreateReportOutputSubjectRepoStrongRef value)?  repoStrongRef,TResult? Function( UModerationCreateReportOutputSubjectUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case UModerationCreateReportOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that);case UModerationCreateReportOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that);case UModerationCreateReportOutputSubjectUnknown() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RepoRef data)?  repoRef,TResult Function( RepoStrongRef data)?  repoStrongRef,TResult Function( Map<String, dynamic> data)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UModerationCreateReportOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that.data);case UModerationCreateReportOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that.data);case UModerationCreateReportOutputSubjectUnknown() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RepoRef data)  repoRef,required TResult Function( RepoStrongRef data)  repoStrongRef,required TResult Function( Map<String, dynamic> data)  unknown,}) {final _that = this;
switch (_that) {
case UModerationCreateReportOutputSubjectRepoRef():
return repoRef(_that.data);case UModerationCreateReportOutputSubjectRepoStrongRef():
return repoStrongRef(_that.data);case UModerationCreateReportOutputSubjectUnknown():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RepoRef data)?  repoRef,TResult? Function( RepoStrongRef data)?  repoStrongRef,TResult? Function( Map<String, dynamic> data)?  unknown,}) {final _that = this;
switch (_that) {
case UModerationCreateReportOutputSubjectRepoRef() when repoRef != null:
return repoRef(_that.data);case UModerationCreateReportOutputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that.data);case UModerationCreateReportOutputSubjectUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class UModerationCreateReportOutputSubjectRepoRef extends UModerationCreateReportOutputSubject {
  const UModerationCreateReportOutputSubjectRepoRef({required this.data}): super._();
  

@override final  RepoRef data;

/// Create a copy of UModerationCreateReportOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UModerationCreateReportOutputSubjectRepoRefCopyWith<UModerationCreateReportOutputSubjectRepoRef> get copyWith => _$UModerationCreateReportOutputSubjectRepoRefCopyWithImpl<UModerationCreateReportOutputSubjectRepoRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UModerationCreateReportOutputSubjectRepoRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UModerationCreateReportOutputSubject.repoRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UModerationCreateReportOutputSubjectRepoRefCopyWith<$Res> implements $UModerationCreateReportOutputSubjectCopyWith<$Res> {
  factory $UModerationCreateReportOutputSubjectRepoRefCopyWith(UModerationCreateReportOutputSubjectRepoRef value, $Res Function(UModerationCreateReportOutputSubjectRepoRef) _then) = _$UModerationCreateReportOutputSubjectRepoRefCopyWithImpl;
@useResult
$Res call({
 RepoRef data
});


$RepoRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UModerationCreateReportOutputSubjectRepoRefCopyWithImpl<$Res>
    implements $UModerationCreateReportOutputSubjectRepoRefCopyWith<$Res> {
  _$UModerationCreateReportOutputSubjectRepoRefCopyWithImpl(this._self, this._then);

  final UModerationCreateReportOutputSubjectRepoRef _self;
  final $Res Function(UModerationCreateReportOutputSubjectRepoRef) _then;

/// Create a copy of UModerationCreateReportOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UModerationCreateReportOutputSubjectRepoRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoRef,
  ));
}

/// Create a copy of UModerationCreateReportOutputSubject
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


class UModerationCreateReportOutputSubjectRepoStrongRef extends UModerationCreateReportOutputSubject {
  const UModerationCreateReportOutputSubjectRepoStrongRef({required this.data}): super._();
  

@override final  RepoStrongRef data;

/// Create a copy of UModerationCreateReportOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UModerationCreateReportOutputSubjectRepoStrongRefCopyWith<UModerationCreateReportOutputSubjectRepoStrongRef> get copyWith => _$UModerationCreateReportOutputSubjectRepoStrongRefCopyWithImpl<UModerationCreateReportOutputSubjectRepoStrongRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UModerationCreateReportOutputSubjectRepoStrongRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UModerationCreateReportOutputSubject.repoStrongRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UModerationCreateReportOutputSubjectRepoStrongRefCopyWith<$Res> implements $UModerationCreateReportOutputSubjectCopyWith<$Res> {
  factory $UModerationCreateReportOutputSubjectRepoStrongRefCopyWith(UModerationCreateReportOutputSubjectRepoStrongRef value, $Res Function(UModerationCreateReportOutputSubjectRepoStrongRef) _then) = _$UModerationCreateReportOutputSubjectRepoStrongRefCopyWithImpl;
@useResult
$Res call({
 RepoStrongRef data
});


$RepoStrongRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UModerationCreateReportOutputSubjectRepoStrongRefCopyWithImpl<$Res>
    implements $UModerationCreateReportOutputSubjectRepoStrongRefCopyWith<$Res> {
  _$UModerationCreateReportOutputSubjectRepoStrongRefCopyWithImpl(this._self, this._then);

  final UModerationCreateReportOutputSubjectRepoStrongRef _self;
  final $Res Function(UModerationCreateReportOutputSubjectRepoStrongRef) _then;

/// Create a copy of UModerationCreateReportOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UModerationCreateReportOutputSubjectRepoStrongRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoStrongRef,
  ));
}

/// Create a copy of UModerationCreateReportOutputSubject
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


class UModerationCreateReportOutputSubjectUnknown extends UModerationCreateReportOutputSubject {
  const UModerationCreateReportOutputSubjectUnknown({required final  Map<String, dynamic> data}): _data = data,super._();
  

 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of UModerationCreateReportOutputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UModerationCreateReportOutputSubjectUnknownCopyWith<UModerationCreateReportOutputSubjectUnknown> get copyWith => _$UModerationCreateReportOutputSubjectUnknownCopyWithImpl<UModerationCreateReportOutputSubjectUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UModerationCreateReportOutputSubjectUnknown&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'UModerationCreateReportOutputSubject.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $UModerationCreateReportOutputSubjectUnknownCopyWith<$Res> implements $UModerationCreateReportOutputSubjectCopyWith<$Res> {
  factory $UModerationCreateReportOutputSubjectUnknownCopyWith(UModerationCreateReportOutputSubjectUnknown value, $Res Function(UModerationCreateReportOutputSubjectUnknown) _then) = _$UModerationCreateReportOutputSubjectUnknownCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$UModerationCreateReportOutputSubjectUnknownCopyWithImpl<$Res>
    implements $UModerationCreateReportOutputSubjectUnknownCopyWith<$Res> {
  _$UModerationCreateReportOutputSubjectUnknownCopyWithImpl(this._self, this._then);

  final UModerationCreateReportOutputSubjectUnknown _self;
  final $Res Function(UModerationCreateReportOutputSubjectUnknown) _then;

/// Create a copy of UModerationCreateReportOutputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UModerationCreateReportOutputSubjectUnknown(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
