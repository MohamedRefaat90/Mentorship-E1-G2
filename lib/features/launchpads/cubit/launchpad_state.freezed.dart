// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launchpad_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LaunchpadState<List> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List data) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List data)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<List> value) initial,
    required TResult Function(Loading<List> value) loading,
    required TResult Function(Success<List> value) success,
    required TResult Function(Error<List> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<List> value)? initial,
    TResult? Function(Loading<List> value)? loading,
    TResult? Function(Success<List> value)? success,
    TResult? Function(Error<List> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<List> value)? initial,
    TResult Function(Loading<List> value)? loading,
    TResult Function(Success<List> value)? success,
    TResult Function(Error<List> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchpadStateCopyWith<List, $Res> {
  factory $LaunchpadStateCopyWith(LaunchpadState<List> value,
          $Res Function(LaunchpadState<List>) then) =
      _$LaunchpadStateCopyWithImpl<List, $Res, LaunchpadState<List>>;
}

/// @nodoc
class _$LaunchpadStateCopyWithImpl<List, $Res,
        $Val extends LaunchpadState<List>>
    implements $LaunchpadStateCopyWith<List, $Res> {
  _$LaunchpadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<List, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<List> value, $Res Function(_$InitialImpl<List>) then) =
      __$$InitialImplCopyWithImpl<List, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<List, $Res>
    extends _$LaunchpadStateCopyWithImpl<List, $Res, _$InitialImpl<List>>
    implements _$$InitialImplCopyWith<List, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<List> _value, $Res Function(_$InitialImpl<List>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<List> implements _Initial<List> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LaunchpadState<$List>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<List>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List data) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List data)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<List> value) initial,
    required TResult Function(Loading<List> value) loading,
    required TResult Function(Success<List> value) success,
    required TResult Function(Error<List> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<List> value)? initial,
    TResult? Function(Loading<List> value)? loading,
    TResult? Function(Success<List> value)? success,
    TResult? Function(Error<List> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<List> value)? initial,
    TResult Function(Loading<List> value)? loading,
    TResult Function(Success<List> value)? success,
    TResult Function(Error<List> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<List> implements LaunchpadState<List> {
  const factory _Initial() = _$InitialImpl<List>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<List, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<List> value, $Res Function(_$LoadingImpl<List>) then) =
      __$$LoadingImplCopyWithImpl<List, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<List, $Res>
    extends _$LaunchpadStateCopyWithImpl<List, $Res, _$LoadingImpl<List>>
    implements _$$LoadingImplCopyWith<List, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<List> _value, $Res Function(_$LoadingImpl<List>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<List> implements Loading<List> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LaunchpadState<$List>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<List>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List data) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List data)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<List> value) initial,
    required TResult Function(Loading<List> value) loading,
    required TResult Function(Success<List> value) success,
    required TResult Function(Error<List> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<List> value)? initial,
    TResult? Function(Loading<List> value)? loading,
    TResult? Function(Success<List> value)? success,
    TResult? Function(Error<List> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<List> value)? initial,
    TResult Function(Loading<List> value)? loading,
    TResult Function(Success<List> value)? success,
    TResult Function(Error<List> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<List> implements LaunchpadState<List> {
  const factory Loading() = _$LoadingImpl<List>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<List, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<List> value, $Res Function(_$SuccessImpl<List>) then) =
      __$$SuccessImplCopyWithImpl<List, $Res>;
  @useResult
  $Res call({List data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<List, $Res>
    extends _$LaunchpadStateCopyWithImpl<List, $Res, _$SuccessImpl<List>>
    implements _$$SuccessImplCopyWith<List, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<List> _value, $Res Function(_$SuccessImpl<List>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<List>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<List> implements Success<List> {
  const _$SuccessImpl(this.data);

  @override
  final List data;

  @override
  String toString() {
    return 'LaunchpadState<$List>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<List> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<List, _$SuccessImpl<List>> get copyWith =>
      __$$SuccessImplCopyWithImpl<List, _$SuccessImpl<List>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List data) success,
    required TResult Function(String error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List data)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<List> value) initial,
    required TResult Function(Loading<List> value) loading,
    required TResult Function(Success<List> value) success,
    required TResult Function(Error<List> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<List> value)? initial,
    TResult? Function(Loading<List> value)? loading,
    TResult? Function(Success<List> value)? success,
    TResult? Function(Error<List> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<List> value)? initial,
    TResult Function(Loading<List> value)? loading,
    TResult Function(Success<List> value)? success,
    TResult Function(Error<List> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<List> implements LaunchpadState<List> {
  const factory Success(final List data) = _$SuccessImpl<List>;

  List get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<List, _$SuccessImpl<List>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<List, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<List> value, $Res Function(_$ErrorImpl<List>) then) =
      __$$ErrorImplCopyWithImpl<List, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<List, $Res>
    extends _$LaunchpadStateCopyWithImpl<List, $Res, _$ErrorImpl<List>>
    implements _$$ErrorImplCopyWith<List, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<List> _value, $Res Function(_$ErrorImpl<List>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<List>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<List> implements Error<List> {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LaunchpadState<$List>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<List> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<List, _$ErrorImpl<List>> get copyWith =>
      __$$ErrorImplCopyWithImpl<List, _$ErrorImpl<List>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List data) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List data)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<List> value) initial,
    required TResult Function(Loading<List> value) loading,
    required TResult Function(Success<List> value) success,
    required TResult Function(Error<List> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<List> value)? initial,
    TResult? Function(Loading<List> value)? loading,
    TResult? Function(Success<List> value)? success,
    TResult? Function(Error<List> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<List> value)? initial,
    TResult Function(Loading<List> value)? loading,
    TResult Function(Success<List> value)? success,
    TResult Function(Error<List> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<List> implements LaunchpadState<List> {
  const factory Error({required final String error}) = _$ErrorImpl<List>;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<List, _$ErrorImpl<List>> get copyWith =>
      throw _privateConstructorUsedError;
}
