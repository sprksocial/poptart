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
mixin _$UModerationCreateReportInputSubject {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UModerationCreateReportInputSubject&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'UModerationCreateReportInputSubject(data: $data)';
}


}

/// @nodoc
class $UModerationCreateReportInputSubjectCopyWith<$Res>  {
$UModerationCreateReportInputSubjectCopyWith(UModerationCreateReportInputSubject _, $Res Function(UModerationCreateReportInputSubject) __);
}


/// Adds pattern-matching-related methods to [UModerationCreateReportInputSubject].
extension UModerationCreateReportInputSubjectPatterns on UModerationCreateReportInputSubject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UModerationCreateReportInputSubjectRepoRef value)?  repoRef,TResult Function( UModerationCreateReportInputSubjectRepoStrongRef value)?  repoStrongRef,TResult Function( UModerationCreateReportInputSubjectUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UModerationCreateReportInputSubjectRepoRef() when repoRef != null:
return repoRef(_that);case UModerationCreateReportInputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that);case UModerationCreateReportInputSubjectUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UModerationCreateReportInputSubjectRepoRef value)  repoRef,required TResult Function( UModerationCreateReportInputSubjectRepoStrongRef value)  repoStrongRef,required TResult Function( UModerationCreateReportInputSubjectUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case UModerationCreateReportInputSubjectRepoRef():
return repoRef(_that);case UModerationCreateReportInputSubjectRepoStrongRef():
return repoStrongRef(_that);case UModerationCreateReportInputSubjectUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UModerationCreateReportInputSubjectRepoRef value)?  repoRef,TResult? Function( UModerationCreateReportInputSubjectRepoStrongRef value)?  repoStrongRef,TResult? Function( UModerationCreateReportInputSubjectUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case UModerationCreateReportInputSubjectRepoRef() when repoRef != null:
return repoRef(_that);case UModerationCreateReportInputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that);case UModerationCreateReportInputSubjectUnknown() when unknown != null:
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
case UModerationCreateReportInputSubjectRepoRef() when repoRef != null:
return repoRef(_that.data);case UModerationCreateReportInputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that.data);case UModerationCreateReportInputSubjectUnknown() when unknown != null:
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
case UModerationCreateReportInputSubjectRepoRef():
return repoRef(_that.data);case UModerationCreateReportInputSubjectRepoStrongRef():
return repoStrongRef(_that.data);case UModerationCreateReportInputSubjectUnknown():
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
case UModerationCreateReportInputSubjectRepoRef() when repoRef != null:
return repoRef(_that.data);case UModerationCreateReportInputSubjectRepoStrongRef() when repoStrongRef != null:
return repoStrongRef(_that.data);case UModerationCreateReportInputSubjectUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class UModerationCreateReportInputSubjectRepoRef extends UModerationCreateReportInputSubject {
  const UModerationCreateReportInputSubjectRepoRef({required this.data}): super._();
  

@override final  RepoRef data;

/// Create a copy of UModerationCreateReportInputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UModerationCreateReportInputSubjectRepoRefCopyWith<UModerationCreateReportInputSubjectRepoRef> get copyWith => _$UModerationCreateReportInputSubjectRepoRefCopyWithImpl<UModerationCreateReportInputSubjectRepoRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UModerationCreateReportInputSubjectRepoRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UModerationCreateReportInputSubject.repoRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UModerationCreateReportInputSubjectRepoRefCopyWith<$Res> implements $UModerationCreateReportInputSubjectCopyWith<$Res> {
  factory $UModerationCreateReportInputSubjectRepoRefCopyWith(UModerationCreateReportInputSubjectRepoRef value, $Res Function(UModerationCreateReportInputSubjectRepoRef) _then) = _$UModerationCreateReportInputSubjectRepoRefCopyWithImpl;
@useResult
$Res call({
 RepoRef data
});


$RepoRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UModerationCreateReportInputSubjectRepoRefCopyWithImpl<$Res>
    implements $UModerationCreateReportInputSubjectRepoRefCopyWith<$Res> {
  _$UModerationCreateReportInputSubjectRepoRefCopyWithImpl(this._self, this._then);

  final UModerationCreateReportInputSubjectRepoRef _self;
  final $Res Function(UModerationCreateReportInputSubjectRepoRef) _then;

/// Create a copy of UModerationCreateReportInputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UModerationCreateReportInputSubjectRepoRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoRef,
  ));
}

/// Create a copy of UModerationCreateReportInputSubject
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


class UModerationCreateReportInputSubjectRepoStrongRef extends UModerationCreateReportInputSubject {
  const UModerationCreateReportInputSubjectRepoStrongRef({required this.data}): super._();
  

@override final  RepoStrongRef data;

/// Create a copy of UModerationCreateReportInputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UModerationCreateReportInputSubjectRepoStrongRefCopyWith<UModerationCreateReportInputSubjectRepoStrongRef> get copyWith => _$UModerationCreateReportInputSubjectRepoStrongRefCopyWithImpl<UModerationCreateReportInputSubjectRepoStrongRef>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UModerationCreateReportInputSubjectRepoStrongRef&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UModerationCreateReportInputSubject.repoStrongRef(data: $data)';
}


}

/// @nodoc
abstract mixin class $UModerationCreateReportInputSubjectRepoStrongRefCopyWith<$Res> implements $UModerationCreateReportInputSubjectCopyWith<$Res> {
  factory $UModerationCreateReportInputSubjectRepoStrongRefCopyWith(UModerationCreateReportInputSubjectRepoStrongRef value, $Res Function(UModerationCreateReportInputSubjectRepoStrongRef) _then) = _$UModerationCreateReportInputSubjectRepoStrongRefCopyWithImpl;
@useResult
$Res call({
 RepoStrongRef data
});


$RepoStrongRefCopyWith<$Res> get data;

}
/// @nodoc
class _$UModerationCreateReportInputSubjectRepoStrongRefCopyWithImpl<$Res>
    implements $UModerationCreateReportInputSubjectRepoStrongRefCopyWith<$Res> {
  _$UModerationCreateReportInputSubjectRepoStrongRefCopyWithImpl(this._self, this._then);

  final UModerationCreateReportInputSubjectRepoStrongRef _self;
  final $Res Function(UModerationCreateReportInputSubjectRepoStrongRef) _then;

/// Create a copy of UModerationCreateReportInputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UModerationCreateReportInputSubjectRepoStrongRef(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RepoStrongRef,
  ));
}

/// Create a copy of UModerationCreateReportInputSubject
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


class UModerationCreateReportInputSubjectUnknown extends UModerationCreateReportInputSubject {
  const UModerationCreateReportInputSubjectUnknown({required final  Map<String, dynamic> data}): _data = data,super._();
  

 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of UModerationCreateReportInputSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UModerationCreateReportInputSubjectUnknownCopyWith<UModerationCreateReportInputSubjectUnknown> get copyWith => _$UModerationCreateReportInputSubjectUnknownCopyWithImpl<UModerationCreateReportInputSubjectUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UModerationCreateReportInputSubjectUnknown&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'UModerationCreateReportInputSubject.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $UModerationCreateReportInputSubjectUnknownCopyWith<$Res> implements $UModerationCreateReportInputSubjectCopyWith<$Res> {
  factory $UModerationCreateReportInputSubjectUnknownCopyWith(UModerationCreateReportInputSubjectUnknown value, $Res Function(UModerationCreateReportInputSubjectUnknown) _then) = _$UModerationCreateReportInputSubjectUnknownCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$UModerationCreateReportInputSubjectUnknownCopyWithImpl<$Res>
    implements $UModerationCreateReportInputSubjectUnknownCopyWith<$Res> {
  _$UModerationCreateReportInputSubjectUnknownCopyWithImpl(this._self, this._then);

  final UModerationCreateReportInputSubjectUnknown _self;
  final $Res Function(UModerationCreateReportInputSubjectUnknown) _then;

/// Create a copy of UModerationCreateReportInputSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UModerationCreateReportInputSubjectUnknown(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
