// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'union_main_output_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UTempCheckHandleAvailabilityOutputResult {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UTempCheckHandleAvailabilityOutputResult&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'UTempCheckHandleAvailabilityOutputResult(data: $data)';
}


}

/// @nodoc
class $UTempCheckHandleAvailabilityOutputResultCopyWith<$Res>  {
$UTempCheckHandleAvailabilityOutputResultCopyWith(UTempCheckHandleAvailabilityOutputResult _, $Res Function(UTempCheckHandleAvailabilityOutputResult) __);
}


/// Adds pattern-matching-related methods to [UTempCheckHandleAvailabilityOutputResult].
extension UTempCheckHandleAvailabilityOutputResultPatterns on UTempCheckHandleAvailabilityOutputResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UTempCheckHandleAvailabilityOutputResultResultAvailable value)?  resultAvailable,TResult Function( UTempCheckHandleAvailabilityOutputResultResultUnavailable value)?  resultUnavailable,TResult Function( UTempCheckHandleAvailabilityOutputResultUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UTempCheckHandleAvailabilityOutputResultResultAvailable() when resultAvailable != null:
return resultAvailable(_that);case UTempCheckHandleAvailabilityOutputResultResultUnavailable() when resultUnavailable != null:
return resultUnavailable(_that);case UTempCheckHandleAvailabilityOutputResultUnknown() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UTempCheckHandleAvailabilityOutputResultResultAvailable value)  resultAvailable,required TResult Function( UTempCheckHandleAvailabilityOutputResultResultUnavailable value)  resultUnavailable,required TResult Function( UTempCheckHandleAvailabilityOutputResultUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case UTempCheckHandleAvailabilityOutputResultResultAvailable():
return resultAvailable(_that);case UTempCheckHandleAvailabilityOutputResultResultUnavailable():
return resultUnavailable(_that);case UTempCheckHandleAvailabilityOutputResultUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UTempCheckHandleAvailabilityOutputResultResultAvailable value)?  resultAvailable,TResult? Function( UTempCheckHandleAvailabilityOutputResultResultUnavailable value)?  resultUnavailable,TResult? Function( UTempCheckHandleAvailabilityOutputResultUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case UTempCheckHandleAvailabilityOutputResultResultAvailable() when resultAvailable != null:
return resultAvailable(_that);case UTempCheckHandleAvailabilityOutputResultResultUnavailable() when resultUnavailable != null:
return resultUnavailable(_that);case UTempCheckHandleAvailabilityOutputResultUnknown() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ResultAvailable data)?  resultAvailable,TResult Function( ResultUnavailable data)?  resultUnavailable,TResult Function( Map<String, dynamic> data)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UTempCheckHandleAvailabilityOutputResultResultAvailable() when resultAvailable != null:
return resultAvailable(_that.data);case UTempCheckHandleAvailabilityOutputResultResultUnavailable() when resultUnavailable != null:
return resultUnavailable(_that.data);case UTempCheckHandleAvailabilityOutputResultUnknown() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ResultAvailable data)  resultAvailable,required TResult Function( ResultUnavailable data)  resultUnavailable,required TResult Function( Map<String, dynamic> data)  unknown,}) {final _that = this;
switch (_that) {
case UTempCheckHandleAvailabilityOutputResultResultAvailable():
return resultAvailable(_that.data);case UTempCheckHandleAvailabilityOutputResultResultUnavailable():
return resultUnavailable(_that.data);case UTempCheckHandleAvailabilityOutputResultUnknown():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ResultAvailable data)?  resultAvailable,TResult? Function( ResultUnavailable data)?  resultUnavailable,TResult? Function( Map<String, dynamic> data)?  unknown,}) {final _that = this;
switch (_that) {
case UTempCheckHandleAvailabilityOutputResultResultAvailable() when resultAvailable != null:
return resultAvailable(_that.data);case UTempCheckHandleAvailabilityOutputResultResultUnavailable() when resultUnavailable != null:
return resultUnavailable(_that.data);case UTempCheckHandleAvailabilityOutputResultUnknown() when unknown != null:
return unknown(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class UTempCheckHandleAvailabilityOutputResultResultAvailable extends UTempCheckHandleAvailabilityOutputResult {
  const UTempCheckHandleAvailabilityOutputResultResultAvailable({required this.data}): super._();
  

@override final  ResultAvailable data;

/// Create a copy of UTempCheckHandleAvailabilityOutputResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UTempCheckHandleAvailabilityOutputResultResultAvailableCopyWith<UTempCheckHandleAvailabilityOutputResultResultAvailable> get copyWith => _$UTempCheckHandleAvailabilityOutputResultResultAvailableCopyWithImpl<UTempCheckHandleAvailabilityOutputResultResultAvailable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UTempCheckHandleAvailabilityOutputResultResultAvailable&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UTempCheckHandleAvailabilityOutputResult.resultAvailable(data: $data)';
}


}

/// @nodoc
abstract mixin class $UTempCheckHandleAvailabilityOutputResultResultAvailableCopyWith<$Res> implements $UTempCheckHandleAvailabilityOutputResultCopyWith<$Res> {
  factory $UTempCheckHandleAvailabilityOutputResultResultAvailableCopyWith(UTempCheckHandleAvailabilityOutputResultResultAvailable value, $Res Function(UTempCheckHandleAvailabilityOutputResultResultAvailable) _then) = _$UTempCheckHandleAvailabilityOutputResultResultAvailableCopyWithImpl;
@useResult
$Res call({
 ResultAvailable data
});


$ResultAvailableCopyWith<$Res> get data;

}
/// @nodoc
class _$UTempCheckHandleAvailabilityOutputResultResultAvailableCopyWithImpl<$Res>
    implements $UTempCheckHandleAvailabilityOutputResultResultAvailableCopyWith<$Res> {
  _$UTempCheckHandleAvailabilityOutputResultResultAvailableCopyWithImpl(this._self, this._then);

  final UTempCheckHandleAvailabilityOutputResultResultAvailable _self;
  final $Res Function(UTempCheckHandleAvailabilityOutputResultResultAvailable) _then;

/// Create a copy of UTempCheckHandleAvailabilityOutputResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UTempCheckHandleAvailabilityOutputResultResultAvailable(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ResultAvailable,
  ));
}

/// Create a copy of UTempCheckHandleAvailabilityOutputResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultAvailableCopyWith<$Res> get data {
  
  return $ResultAvailableCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class UTempCheckHandleAvailabilityOutputResultResultUnavailable extends UTempCheckHandleAvailabilityOutputResult {
  const UTempCheckHandleAvailabilityOutputResultResultUnavailable({required this.data}): super._();
  

@override final  ResultUnavailable data;

/// Create a copy of UTempCheckHandleAvailabilityOutputResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UTempCheckHandleAvailabilityOutputResultResultUnavailableCopyWith<UTempCheckHandleAvailabilityOutputResultResultUnavailable> get copyWith => _$UTempCheckHandleAvailabilityOutputResultResultUnavailableCopyWithImpl<UTempCheckHandleAvailabilityOutputResultResultUnavailable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UTempCheckHandleAvailabilityOutputResultResultUnavailable&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UTempCheckHandleAvailabilityOutputResult.resultUnavailable(data: $data)';
}


}

/// @nodoc
abstract mixin class $UTempCheckHandleAvailabilityOutputResultResultUnavailableCopyWith<$Res> implements $UTempCheckHandleAvailabilityOutputResultCopyWith<$Res> {
  factory $UTempCheckHandleAvailabilityOutputResultResultUnavailableCopyWith(UTempCheckHandleAvailabilityOutputResultResultUnavailable value, $Res Function(UTempCheckHandleAvailabilityOutputResultResultUnavailable) _then) = _$UTempCheckHandleAvailabilityOutputResultResultUnavailableCopyWithImpl;
@useResult
$Res call({
 ResultUnavailable data
});


$ResultUnavailableCopyWith<$Res> get data;

}
/// @nodoc
class _$UTempCheckHandleAvailabilityOutputResultResultUnavailableCopyWithImpl<$Res>
    implements $UTempCheckHandleAvailabilityOutputResultResultUnavailableCopyWith<$Res> {
  _$UTempCheckHandleAvailabilityOutputResultResultUnavailableCopyWithImpl(this._self, this._then);

  final UTempCheckHandleAvailabilityOutputResultResultUnavailable _self;
  final $Res Function(UTempCheckHandleAvailabilityOutputResultResultUnavailable) _then;

/// Create a copy of UTempCheckHandleAvailabilityOutputResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UTempCheckHandleAvailabilityOutputResultResultUnavailable(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ResultUnavailable,
  ));
}

/// Create a copy of UTempCheckHandleAvailabilityOutputResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultUnavailableCopyWith<$Res> get data {
  
  return $ResultUnavailableCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class UTempCheckHandleAvailabilityOutputResultUnknown extends UTempCheckHandleAvailabilityOutputResult {
  const UTempCheckHandleAvailabilityOutputResultUnknown({required final  Map<String, dynamic> data}): _data = data,super._();
  

 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of UTempCheckHandleAvailabilityOutputResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UTempCheckHandleAvailabilityOutputResultUnknownCopyWith<UTempCheckHandleAvailabilityOutputResultUnknown> get copyWith => _$UTempCheckHandleAvailabilityOutputResultUnknownCopyWithImpl<UTempCheckHandleAvailabilityOutputResultUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UTempCheckHandleAvailabilityOutputResultUnknown&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'UTempCheckHandleAvailabilityOutputResult.unknown(data: $data)';
}


}

/// @nodoc
abstract mixin class $UTempCheckHandleAvailabilityOutputResultUnknownCopyWith<$Res> implements $UTempCheckHandleAvailabilityOutputResultCopyWith<$Res> {
  factory $UTempCheckHandleAvailabilityOutputResultUnknownCopyWith(UTempCheckHandleAvailabilityOutputResultUnknown value, $Res Function(UTempCheckHandleAvailabilityOutputResultUnknown) _then) = _$UTempCheckHandleAvailabilityOutputResultUnknownCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$UTempCheckHandleAvailabilityOutputResultUnknownCopyWithImpl<$Res>
    implements $UTempCheckHandleAvailabilityOutputResultUnknownCopyWith<$Res> {
  _$UTempCheckHandleAvailabilityOutputResultUnknownCopyWithImpl(this._self, this._then);

  final UTempCheckHandleAvailabilityOutputResultUnknown _self;
  final $Res Function(UTempCheckHandleAvailabilityOutputResultUnknown) _then;

/// Create a copy of UTempCheckHandleAvailabilityOutputResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UTempCheckHandleAvailabilityOutputResultUnknown(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
