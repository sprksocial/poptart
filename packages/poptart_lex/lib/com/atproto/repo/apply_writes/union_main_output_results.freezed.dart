// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'union_main_output_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$URepoApplyWritesOutputResults {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URepoApplyWritesOutputResults&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'URepoApplyWritesOutputResults(data: $data)';
}


}

/// @nodoc
class $URepoApplyWritesOutputResultsCopyWith<$Res>  {
$URepoApplyWritesOutputResultsCopyWith(URepoApplyWritesOutputResults _, $Res Function(URepoApplyWritesOutputResults) __);
}


/// Adds pattern-matching-related methods to [URepoApplyWritesOutputResults].
extension URepoApplyWritesOutputResultsPatterns on URepoApplyWritesOutputResults {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( URepoApplyWritesOutputResultsCreateResult value)?  createResult,TResult Function( URepoApplyWritesOutputResultsUpdateResult value)?  updateResult,TResult Function( URepoApplyWritesOutputResultsDeleteResult value)?  deleteResult,TResult Function( URepoApplyWritesOutputResultsUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case URepoApplyWritesOutputResultsCreateResult() when createResult != null:
return createResult(_that);case URepoApplyWritesOutputResultsUpdateResult() when updateResult != null:
return updateResult(_that);case URepoApplyWritesOutputResultsDeleteResult() when deleteResult != null:
return deleteResult(_that);case URepoApplyWritesOutputResultsUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( URepoApplyWritesOutputResultsCreateResult value)  createResult,required TResult Function( URepoApplyWritesOutputResultsUpdateResult value)  updateResult,required TResult Function( URepoApplyWritesOutputResultsDeleteResult value)  deleteResult,required TResult Function( URepoApplyWritesOutputResultsUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case URepoApplyWritesOutputResultsCreateResult():
return createResult(_that);case URepoApplyWritesOutputResultsUpdateResult():
return updateResult(_that);case URepoApplyWritesOutputResultsDeleteResult():
return deleteResult(_that);case URepoApplyWritesOutputResultsUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( URepoApplyWritesOutputResultsCreateResult value)?  createResult,TResult? Function( URepoApplyWritesOutputResultsUpdateResult value)?  updateResult,TResult? Function( URepoApplyWritesOutputResultsDeleteResult value)?  deleteResult,TResult? Function( URepoApplyWritesOutputResultsUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case URepoApplyWritesOutputResultsCreateResult() when createResult != null:
return createResult(_that);case URepoApplyWritesOutputResultsUpdateResult() when updateResult != null:
return updateResult(_that);case URepoApplyWritesOutputResultsDeleteResult() when deleteResult != null:
return deleteResult(_that);case URepoApplyWritesOutputResultsUnknown() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CreateResult data)?  createResult,TResult Function( UpdateResult data)?  updateResult,TResult Function( DeleteResult data)?  deleteResult,TResult Function( Map<String, dynamic> data)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case URepoApplyWritesOutputResultsCreateResult() when createResult != null:
return createResult(_that.data);case URepoApplyWritesOutputResultsUpdateResult() when updateResult != null:
return updateResult(_that.data);case URepoApplyWritesOutputResultsDeleteResult() when deleteResult != null:
return deleteResult(_that.data);case URepoApplyWritesOutputResultsUnknown() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CreateResult data)  createResult,required TResult Function( UpdateResult data)  updateResult,required TResult Function( DeleteResult data)  deleteResult,required TResult Function( Map<String, dynamic> data)  unknown,}) {final _that = this;
switch (_that) {
case URepoApplyWritesOutputResultsCreateResult():
return createResult(_that.data);case URepoApplyWritesOutputResultsUpdateResult():
return updateResult(_that.data);case URepoApplyWritesOutputResultsDeleteResult():
return deleteResult(_that.data);case URepoApplyWritesOutputResultsUnknown():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CreateResult data)?  createResult,TResult? Function( UpdateResult data)?  updateResult,TResult? Function( DeleteResult data)?  deleteResult,TResult? Function( Map<String, dynamic> data)?  unknown,}) {final _that = this;
switch (_that) {
case URepoApplyWritesOutputResultsCreateResult() when createResult != null:
return createResult(_that.data);case URepoApplyWritesOutputResultsUpdateResult() when updateResult != null:
return updateResult(_that.data);case URepoApplyWritesOutputResultsDeleteResult() when deleteResult != null:
return deleteResult(_that.data);case URepoApplyWritesOutputResultsUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class URepoApplyWritesOutputResultsCreateResult extends URepoApplyWritesOutputResults {
  const URepoApplyWritesOutputResultsCreateResult({required this.data}): super._();
  

@override final  CreateResult data;

/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$URepoApplyWritesOutputResultsCreateResultCopyWith<URepoApplyWritesOutputResultsCreateResult> get copyWith => _$URepoApplyWritesOutputResultsCreateResultCopyWithImpl<URepoApplyWritesOutputResultsCreateResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URepoApplyWritesOutputResultsCreateResult&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'URepoApplyWritesOutputResults.createResult(data: $data)';
}


}

/// @nodoc
abstract mixin class $URepoApplyWritesOutputResultsCreateResultCopyWith<$Res> implements $URepoApplyWritesOutputResultsCopyWith<$Res> {
  factory $URepoApplyWritesOutputResultsCreateResultCopyWith(URepoApplyWritesOutputResultsCreateResult value, $Res Function(URepoApplyWritesOutputResultsCreateResult) _then) = _$URepoApplyWritesOutputResultsCreateResultCopyWithImpl;
@useResult
$Res call({
 CreateResult data
});


$CreateResultCopyWith<$Res> get data;

}
/// @nodoc
class _$URepoApplyWritesOutputResultsCreateResultCopyWithImpl<$Res>
    implements $URepoApplyWritesOutputResultsCreateResultCopyWith<$Res> {
  _$URepoApplyWritesOutputResultsCreateResultCopyWithImpl(this._self, this._then);

  final URepoApplyWritesOutputResultsCreateResult _self;
  final $Res Function(URepoApplyWritesOutputResultsCreateResult) _then;

/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(URepoApplyWritesOutputResultsCreateResult(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateResult,
  ));
}

/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateResultCopyWith<$Res> get data {
  
  return $CreateResultCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class URepoApplyWritesOutputResultsUpdateResult extends URepoApplyWritesOutputResults {
  const URepoApplyWritesOutputResultsUpdateResult({required this.data}): super._();
  

@override final  UpdateResult data;

/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$URepoApplyWritesOutputResultsUpdateResultCopyWith<URepoApplyWritesOutputResultsUpdateResult> get copyWith => _$URepoApplyWritesOutputResultsUpdateResultCopyWithImpl<URepoApplyWritesOutputResultsUpdateResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URepoApplyWritesOutputResultsUpdateResult&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'URepoApplyWritesOutputResults.updateResult(data: $data)';
}


}

/// @nodoc
abstract mixin class $URepoApplyWritesOutputResultsUpdateResultCopyWith<$Res> implements $URepoApplyWritesOutputResultsCopyWith<$Res> {
  factory $URepoApplyWritesOutputResultsUpdateResultCopyWith(URepoApplyWritesOutputResultsUpdateResult value, $Res Function(URepoApplyWritesOutputResultsUpdateResult) _then) = _$URepoApplyWritesOutputResultsUpdateResultCopyWithImpl;
@useResult
$Res call({
 UpdateResult data
});


$UpdateResultCopyWith<$Res> get data;

}
/// @nodoc
class _$URepoApplyWritesOutputResultsUpdateResultCopyWithImpl<$Res>
    implements $URepoApplyWritesOutputResultsUpdateResultCopyWith<$Res> {
  _$URepoApplyWritesOutputResultsUpdateResultCopyWithImpl(this._self, this._then);

  final URepoApplyWritesOutputResultsUpdateResult _self;
  final $Res Function(URepoApplyWritesOutputResultsUpdateResult) _then;

/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(URepoApplyWritesOutputResultsUpdateResult(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UpdateResult,
  ));
}

/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateResultCopyWith<$Res> get data {
  
  return $UpdateResultCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class URepoApplyWritesOutputResultsDeleteResult extends URepoApplyWritesOutputResults {
  const URepoApplyWritesOutputResultsDeleteResult({required this.data}): super._();
  

@override final  DeleteResult data;

/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$URepoApplyWritesOutputResultsDeleteResultCopyWith<URepoApplyWritesOutputResultsDeleteResult> get copyWith => _$URepoApplyWritesOutputResultsDeleteResultCopyWithImpl<URepoApplyWritesOutputResultsDeleteResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URepoApplyWritesOutputResultsDeleteResult&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'URepoApplyWritesOutputResults.deleteResult(data: $data)';
}


}

/// @nodoc
abstract mixin class $URepoApplyWritesOutputResultsDeleteResultCopyWith<$Res> implements $URepoApplyWritesOutputResultsCopyWith<$Res> {
  factory $URepoApplyWritesOutputResultsDeleteResultCopyWith(URepoApplyWritesOutputResultsDeleteResult value, $Res Function(URepoApplyWritesOutputResultsDeleteResult) _then) = _$URepoApplyWritesOutputResultsDeleteResultCopyWithImpl;
@useResult
$Res call({
 DeleteResult data
});


$DeleteResultCopyWith<$Res> get data;

}
/// @nodoc
class _$URepoApplyWritesOutputResultsDeleteResultCopyWithImpl<$Res>
    implements $URepoApplyWritesOutputResultsDeleteResultCopyWith<$Res> {
  _$URepoApplyWritesOutputResultsDeleteResultCopyWithImpl(this._self, this._then);

  final URepoApplyWritesOutputResultsDeleteResult _self;
  final $Res Function(URepoApplyWritesOutputResultsDeleteResult) _then;

/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(URepoApplyWritesOutputResultsDeleteResult(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DeleteResult,
  ));
}

/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeleteResultCopyWith<$Res> get data {
  
  return $DeleteResultCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class URepoApplyWritesOutputResultsUnknown extends URepoApplyWritesOutputResults {
  const URepoApplyWritesOutputResultsUnknown({required final  Map<String, dynamic> data}): _data = data,super._();
  

 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$URepoApplyWritesOutputResultsUnknownCopyWith<URepoApplyWritesOutputResultsUnknown> get copyWith => _$URepoApplyWritesOutputResultsUnknownCopyWithImpl<URepoApplyWritesOutputResultsUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is URepoApplyWritesOutputResultsUnknown&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'URepoApplyWritesOutputResults.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $URepoApplyWritesOutputResultsUnknownCopyWith<$Res> implements $URepoApplyWritesOutputResultsCopyWith<$Res> {
  factory $URepoApplyWritesOutputResultsUnknownCopyWith(URepoApplyWritesOutputResultsUnknown value, $Res Function(URepoApplyWritesOutputResultsUnknown) _then) = _$URepoApplyWritesOutputResultsUnknownCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$URepoApplyWritesOutputResultsUnknownCopyWithImpl<$Res>
    implements $URepoApplyWritesOutputResultsUnknownCopyWith<$Res> {
  _$URepoApplyWritesOutputResultsUnknownCopyWithImpl(this._self, this._then);

  final URepoApplyWritesOutputResultsUnknown _self;
  final $Res Function(URepoApplyWritesOutputResultsUnknown) _then;

/// Create a copy of URepoApplyWritesOutputResults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(URepoApplyWritesOutputResultsUnknown(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
