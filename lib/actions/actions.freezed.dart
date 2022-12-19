// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) = _$LoginCopyWithImpl<$Res, Login>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStartCopyWith<$Res> {
  factory _$$LoginStartCopyWith(_$LoginStart value, $Res Function(_$LoginStart) then) =
      __$$LoginStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, ActionResponse response});
}

/// @nodoc
class __$$LoginStartCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res, _$LoginStart>
    implements _$$LoginStartCopyWith<$Res> {
  __$$LoginStartCopyWithImpl(_$LoginStart _value, $Res Function(_$LoginStart) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? response = null,
  }) {
    return _then(_$LoginStart(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ));
  }
}

/// @nodoc

class _$LoginStart implements LoginStart {
  const _$LoginStart({required this.email, required this.password, required this.response});

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResponse response;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStart &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.response, response) || other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStartCopyWith<_$LoginStart> get copyWith => __$$LoginStartCopyWithImpl<_$LoginStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LoginStart implements Login {
  const factory LoginStart(
      {required final String email,
      required final String password,
      required final ActionResponse response}) = _$LoginStart;

  String get email;
  String get password;
  ActionResponse get response;
  @JsonKey(ignore: true)
  _$$LoginStartCopyWith<_$LoginStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessfulCopyWith<$Res> {
  factory _$$LoginSuccessfulCopyWith(_$LoginSuccessful value, $Res Function(_$LoginSuccessful) then) =
      __$$LoginSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res, _$LoginSuccessful>
    implements _$$LoginSuccessfulCopyWith<$Res> {
  __$$LoginSuccessfulCopyWithImpl(_$LoginSuccessful _value, $Res Function(_$LoginSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginSuccessful(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessfulCopyWith<_$LoginSuccessful> get copyWith =>
      __$$LoginSuccessfulCopyWithImpl<_$LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(final AppUser user) = _$LoginSuccessful;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$LoginSuccessfulCopyWith<_$LoginSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorCopyWith<$Res> {
  factory _$$LoginErrorCopyWith(_$LoginError value, $Res Function(_$LoginError) then) =
      __$$LoginErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res, _$LoginError>
    implements _$$LoginErrorCopyWith<$Res> {
  __$$LoginErrorCopyWithImpl(_$LoginError _value, $Res Function(_$LoginError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LoginError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LoginError implements LoginError {
  const _$LoginError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Login.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorCopyWith<_$LoginError> get copyWith => __$$LoginErrorCopyWithImpl<_$LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login {
  const factory LoginError(final Object error, final StackTrace stackTrace) = _$LoginError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$LoginErrorCopyWith<_$LoginError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Logout {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) = _$LogoutCopyWithImpl<$Res, Logout>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res, $Val extends Logout> implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogoutStartCopyWith<$Res> {
  factory _$$LogoutStartCopyWith(_$LogoutStart value, $Res Function(_$LogoutStart) then) =
      __$$LogoutStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutStartCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res, _$LogoutStart>
    implements _$$LogoutStartCopyWith<$Res> {
  __$$LogoutStartCopyWithImpl(_$LogoutStart _value, $Res Function(_$LogoutStart) _then) : super(_value, _then);
}

/// @nodoc

class _$LogoutStart implements LogoutStart {
  const _$LogoutStart();

  @override
  String toString() {
    return 'Logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LogoutStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LogoutStart implements Logout {
  const factory LogoutStart() = _$LogoutStart;
}

/// @nodoc
abstract class _$$LogoutSuccessfulCopyWith<$Res> {
  factory _$$LogoutSuccessfulCopyWith(_$LogoutSuccessful value, $Res Function(_$LogoutSuccessful) then) =
      __$$LogoutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutSuccessfulCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res, _$LogoutSuccessful>
    implements _$$LogoutSuccessfulCopyWith<$Res> {
  __$$LogoutSuccessfulCopyWithImpl(_$LogoutSuccessful _value, $Res Function(_$LogoutSuccessful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutSuccessful implements LogoutSuccessful {
  const _$LogoutSuccessful();

  @override
  String toString() {
    return 'Logout.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LogoutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccessful implements Logout {
  const factory LogoutSuccessful() = _$LogoutSuccessful;
}

/// @nodoc
abstract class _$$LogoutErrorCopyWith<$Res> {
  factory _$$LogoutErrorCopyWith(_$LogoutError value, $Res Function(_$LogoutError) then) =
      __$$LogoutErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LogoutErrorCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res, _$LogoutError>
    implements _$$LogoutErrorCopyWith<$Res> {
  __$$LogoutErrorCopyWithImpl(_$LogoutError _value, $Res Function(_$LogoutError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LogoutError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LogoutError implements LogoutError {
  const _$LogoutError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Logout.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutErrorCopyWith<_$LogoutError> get copyWith => __$$LogoutErrorCopyWithImpl<_$LogoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogoutError implements Logout {
  const factory LogoutError(final Object error, final StackTrace stackTrace) = _$LogoutError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$LogoutErrorCopyWith<_$LogoutError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserCopyWith<$Res> {
  factory $CreateUserCopyWith(CreateUser value, $Res Function(CreateUser) then) =
      _$CreateUserCopyWithImpl<$Res, CreateUser>;
}

/// @nodoc
class _$CreateUserCopyWithImpl<$Res, $Val extends CreateUser> implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateUserStartCopyWith<$Res> {
  factory _$$CreateUserStartCopyWith(_$CreateUserStart value, $Res Function(_$CreateUserStart) then) =
      __$$CreateUserStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, ActionResponse response});
}

/// @nodoc
class __$$CreateUserStartCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserStart>
    implements _$$CreateUserStartCopyWith<$Res> {
  __$$CreateUserStartCopyWithImpl(_$CreateUserStart _value, $Res Function(_$CreateUserStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? response = null,
  }) {
    return _then(_$CreateUserStart(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ));
  }
}

/// @nodoc

class _$CreateUserStart implements CreateUserStart {
  const _$CreateUserStart({required this.email, required this.password, required this.response});

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResponse response;

  @override
  String toString() {
    return 'CreateUser(email: $email, password: $password, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserStart &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.response, response) || other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserStartCopyWith<_$CreateUserStart> get copyWith =>
      __$$CreateUserStartCopyWithImpl<_$CreateUserStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateUserStart implements CreateUser {
  const factory CreateUserStart(
      {required final String email,
      required final String password,
      required final ActionResponse response}) = _$CreateUserStart;

  String get email;
  String get password;
  ActionResponse get response;
  @JsonKey(ignore: true)
  _$$CreateUserStartCopyWith<_$CreateUserStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserSuccessfulCopyWith<$Res> {
  factory _$$CreateUserSuccessfulCopyWith(_$CreateUserSuccessful value, $Res Function(_$CreateUserSuccessful) then) =
      __$$CreateUserSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$CreateUserSuccessfulCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserSuccessful>
    implements _$$CreateUserSuccessfulCopyWith<$Res> {
  __$$CreateUserSuccessfulCopyWithImpl(_$CreateUserSuccessful _value, $Res Function(_$CreateUserSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$CreateUserSuccessful(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$CreateUserSuccessful implements CreateUserSuccessful {
  const _$CreateUserSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'CreateUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserSuccessfulCopyWith<_$CreateUserSuccessful> get copyWith =>
      __$$CreateUserSuccessfulCopyWithImpl<_$CreateUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateUserSuccessful implements CreateUser {
  const factory CreateUserSuccessful(final AppUser user) = _$CreateUserSuccessful;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$CreateUserSuccessfulCopyWith<_$CreateUserSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserErrorCopyWith<$Res> {
  factory _$$CreateUserErrorCopyWith(_$CreateUserError value, $Res Function(_$CreateUserError) then) =
      __$$CreateUserErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateUserErrorCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserError>
    implements _$$CreateUserErrorCopyWith<$Res> {
  __$$CreateUserErrorCopyWithImpl(_$CreateUserError _value, $Res Function(_$CreateUserError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$CreateUserError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$CreateUserError implements CreateUserError {
  const _$CreateUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserErrorCopyWith<_$CreateUserError> get copyWith =>
      __$$CreateUserErrorCopyWithImpl<_$CreateUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateUserError implements CreateUser {
  const factory CreateUserError(final Object error, final StackTrace stackTrace) = _$CreateUserError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreateUserErrorCopyWith<_$CreateUserError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChangePage {
  int get currentIndexPage => throw _privateConstructorUsedError;
  ActionResponse get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePageCopyWith<ChangePage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePageCopyWith<$Res> {
  factory $ChangePageCopyWith(ChangePage value, $Res Function(ChangePage) then) =
      _$ChangePageCopyWithImpl<$Res, ChangePage>;
  @useResult
  $Res call({int currentIndexPage, ActionResponse response});
}

/// @nodoc
class _$ChangePageCopyWithImpl<$Res, $Val extends ChangePage> implements $ChangePageCopyWith<$Res> {
  _$ChangePageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndexPage = null,
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      currentIndexPage: null == currentIndexPage
          ? _value.currentIndexPage
          : currentIndexPage // ignore: cast_nullable_to_non_nullable
              as int,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePage$CopyWith<$Res> implements $ChangePageCopyWith<$Res> {
  factory _$$ChangePage$CopyWith(_$ChangePage$ value, $Res Function(_$ChangePage$) then) =
      __$$ChangePage$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndexPage, ActionResponse response});
}

/// @nodoc
class __$$ChangePage$CopyWithImpl<$Res> extends _$ChangePageCopyWithImpl<$Res, _$ChangePage$>
    implements _$$ChangePage$CopyWith<$Res> {
  __$$ChangePage$CopyWithImpl(_$ChangePage$ _value, $Res Function(_$ChangePage$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndexPage = null,
    Object? response = null,
  }) {
    return _then(_$ChangePage$(
      currentIndexPage: null == currentIndexPage
          ? _value.currentIndexPage
          : currentIndexPage // ignore: cast_nullable_to_non_nullable
              as int,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ));
  }
}

/// @nodoc

class _$ChangePage$ implements ChangePage$ {
  const _$ChangePage$({required this.currentIndexPage, required this.response});

  @override
  final int currentIndexPage;
  @override
  final ActionResponse response;

  @override
  String toString() {
    return 'ChangePage(currentIndexPage: $currentIndexPage, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePage$ &&
            (identical(other.currentIndexPage, currentIndexPage) || other.currentIndexPage == currentIndexPage) &&
            (identical(other.response, response) || other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndexPage, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePage$CopyWith<_$ChangePage$> get copyWith => __$$ChangePage$CopyWithImpl<_$ChangePage$>(this, _$identity);
}

abstract class ChangePage$ implements ChangePage {
  const factory ChangePage$({required final int currentIndexPage, required final ActionResponse response}) =
      _$ChangePage$;

  @override
  int get currentIndexPage;
  @override
  ActionResponse get response;
  @override
  @JsonKey(ignore: true)
  _$$ChangePage$CopyWith<_$ChangePage$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChangeProfilePicture {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String picture, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String picture, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String picture, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangeProfilePictureStart value) $default, {
    required TResult Function(ChangeProfilePictureSuccessful value) successful,
    required TResult Function(ChangeProfilePictureError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangeProfilePictureStart value)? $default, {
    TResult? Function(ChangeProfilePictureSuccessful value)? successful,
    TResult? Function(ChangeProfilePictureError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeProfilePictureStart value)? $default, {
    TResult Function(ChangeProfilePictureSuccessful value)? successful,
    TResult Function(ChangeProfilePictureError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeProfilePictureCopyWith<$Res> {
  factory $ChangeProfilePictureCopyWith(ChangeProfilePicture value, $Res Function(ChangeProfilePicture) then) =
      _$ChangeProfilePictureCopyWithImpl<$Res, ChangeProfilePicture>;
}

/// @nodoc
class _$ChangeProfilePictureCopyWithImpl<$Res, $Val extends ChangeProfilePicture>
    implements $ChangeProfilePictureCopyWith<$Res> {
  _$ChangeProfilePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeProfilePictureStartCopyWith<$Res> {
  factory _$$ChangeProfilePictureStartCopyWith(
          _$ChangeProfilePictureStart value, $Res Function(_$ChangeProfilePictureStart) then) =
      __$$ChangeProfilePictureStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String picture, ActionResponse response});
}

/// @nodoc
class __$$ChangeProfilePictureStartCopyWithImpl<$Res>
    extends _$ChangeProfilePictureCopyWithImpl<$Res, _$ChangeProfilePictureStart>
    implements _$$ChangeProfilePictureStartCopyWith<$Res> {
  __$$ChangeProfilePictureStartCopyWithImpl(
      _$ChangeProfilePictureStart _value, $Res Function(_$ChangeProfilePictureStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picture = null,
    Object? response = null,
  }) {
    return _then(_$ChangeProfilePictureStart(
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ));
  }
}

/// @nodoc

class _$ChangeProfilePictureStart implements ChangeProfilePictureStart {
  const _$ChangeProfilePictureStart({required this.picture, required this.response});

  @override
  final String picture;
  @override
  final ActionResponse response;

  @override
  String toString() {
    return 'ChangeProfilePicture(picture: $picture, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProfilePictureStart &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.response, response) || other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, picture, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeProfilePictureStartCopyWith<_$ChangeProfilePictureStart> get copyWith =>
      __$$ChangeProfilePictureStartCopyWithImpl<_$ChangeProfilePictureStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String picture, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(picture, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String picture, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(picture, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String picture, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(picture, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangeProfilePictureStart value) $default, {
    required TResult Function(ChangeProfilePictureSuccessful value) successful,
    required TResult Function(ChangeProfilePictureError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangeProfilePictureStart value)? $default, {
    TResult? Function(ChangeProfilePictureSuccessful value)? successful,
    TResult? Function(ChangeProfilePictureError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeProfilePictureStart value)? $default, {
    TResult Function(ChangeProfilePictureSuccessful value)? successful,
    TResult Function(ChangeProfilePictureError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ChangeProfilePictureStart implements ChangeProfilePicture {
  const factory ChangeProfilePictureStart({required final String picture, required final ActionResponse response}) =
      _$ChangeProfilePictureStart;

  String get picture;
  ActionResponse get response;
  @JsonKey(ignore: true)
  _$$ChangeProfilePictureStartCopyWith<_$ChangeProfilePictureStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeProfilePictureSuccessfulCopyWith<$Res> {
  factory _$$ChangeProfilePictureSuccessfulCopyWith(
          _$ChangeProfilePictureSuccessful value, $Res Function(_$ChangeProfilePictureSuccessful) then) =
      __$$ChangeProfilePictureSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChangeProfilePictureSuccessfulCopyWithImpl<$Res>
    extends _$ChangeProfilePictureCopyWithImpl<$Res, _$ChangeProfilePictureSuccessful>
    implements _$$ChangeProfilePictureSuccessfulCopyWith<$Res> {
  __$$ChangeProfilePictureSuccessfulCopyWithImpl(
      _$ChangeProfilePictureSuccessful _value, $Res Function(_$ChangeProfilePictureSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ChangeProfilePictureSuccessful(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ChangeProfilePictureSuccessful implements ChangeProfilePictureSuccessful {
  const _$ChangeProfilePictureSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'ChangeProfilePicture.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProfilePictureSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeProfilePictureSuccessfulCopyWith<_$ChangeProfilePictureSuccessful> get copyWith =>
      __$$ChangeProfilePictureSuccessfulCopyWithImpl<_$ChangeProfilePictureSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String picture, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String picture, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String picture, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangeProfilePictureStart value) $default, {
    required TResult Function(ChangeProfilePictureSuccessful value) successful,
    required TResult Function(ChangeProfilePictureError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangeProfilePictureStart value)? $default, {
    TResult? Function(ChangeProfilePictureSuccessful value)? successful,
    TResult? Function(ChangeProfilePictureError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeProfilePictureStart value)? $default, {
    TResult Function(ChangeProfilePictureSuccessful value)? successful,
    TResult Function(ChangeProfilePictureError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ChangeProfilePictureSuccessful implements ChangeProfilePicture {
  const factory ChangeProfilePictureSuccessful(final AppUser user) = _$ChangeProfilePictureSuccessful;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$ChangeProfilePictureSuccessfulCopyWith<_$ChangeProfilePictureSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeProfilePictureErrorCopyWith<$Res> {
  factory _$$ChangeProfilePictureErrorCopyWith(
          _$ChangeProfilePictureError value, $Res Function(_$ChangeProfilePictureError) then) =
      __$$ChangeProfilePictureErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ChangeProfilePictureErrorCopyWithImpl<$Res>
    extends _$ChangeProfilePictureCopyWithImpl<$Res, _$ChangeProfilePictureError>
    implements _$$ChangeProfilePictureErrorCopyWith<$Res> {
  __$$ChangeProfilePictureErrorCopyWithImpl(
      _$ChangeProfilePictureError _value, $Res Function(_$ChangeProfilePictureError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ChangeProfilePictureError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ChangeProfilePictureError implements ChangeProfilePictureError {
  const _$ChangeProfilePictureError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ChangeProfilePicture.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProfilePictureError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeProfilePictureErrorCopyWith<_$ChangeProfilePictureError> get copyWith =>
      __$$ChangeProfilePictureErrorCopyWithImpl<_$ChangeProfilePictureError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String picture, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String picture, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String picture, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangeProfilePictureStart value) $default, {
    required TResult Function(ChangeProfilePictureSuccessful value) successful,
    required TResult Function(ChangeProfilePictureError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ChangeProfilePictureStart value)? $default, {
    TResult? Function(ChangeProfilePictureSuccessful value)? successful,
    TResult? Function(ChangeProfilePictureError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeProfilePictureStart value)? $default, {
    TResult Function(ChangeProfilePictureSuccessful value)? successful,
    TResult Function(ChangeProfilePictureError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChangeProfilePictureError implements ChangeProfilePicture {
  const factory ChangeProfilePictureError(final Object error, final StackTrace stackTrace) =
      _$ChangeProfilePictureError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ChangeProfilePictureErrorCopyWith<_$ChangeProfilePictureError> get copyWith => throw _privateConstructorUsedError;
}
