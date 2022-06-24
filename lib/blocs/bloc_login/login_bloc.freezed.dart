// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitiated,
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function() loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitiated value) loginInitiated,
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$LoginInitiatedCopyWith<$Res> {
  factory _$$LoginInitiatedCopyWith(
          _$LoginInitiated value, $Res Function(_$LoginInitiated) then) =
      __$$LoginInitiatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitiatedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginInitiatedCopyWith<$Res> {
  __$$LoginInitiatedCopyWithImpl(
      _$LoginInitiated _value, $Res Function(_$LoginInitiated) _then)
      : super(_value, (v) => _then(v as _$LoginInitiated));

  @override
  _$LoginInitiated get _value => super._value as _$LoginInitiated;
}

/// @nodoc

class _$LoginInitiated implements LoginInitiated {
  const _$LoginInitiated();

  @override
  String toString() {
    return 'LoginEvent.loginInitiated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitiated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitiated,
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function() loginSubmitted,
  }) {
    return loginInitiated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
  }) {
    return loginInitiated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginInitiated != null) {
      return loginInitiated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitiated value) loginInitiated,
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
  }) {
    return loginInitiated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
  }) {
    return loginInitiated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginInitiated != null) {
      return loginInitiated(this);
    }
    return orElse();
  }
}

abstract class LoginInitiated implements LoginEvent {
  const factory LoginInitiated() = _$LoginInitiated;
}

/// @nodoc
abstract class _$$LoginUsernameChangedCopyWith<$Res> {
  factory _$$LoginUsernameChangedCopyWith(_$LoginUsernameChanged value,
          $Res Function(_$LoginUsernameChanged) then) =
      __$$LoginUsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$LoginUsernameChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginUsernameChangedCopyWith<$Res> {
  __$$LoginUsernameChangedCopyWithImpl(_$LoginUsernameChanged _value,
      $Res Function(_$LoginUsernameChanged) _then)
      : super(_value, (v) => _then(v as _$LoginUsernameChanged));

  @override
  _$LoginUsernameChanged get _value => super._value as _$LoginUsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$LoginUsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUsernameChanged implements LoginUsernameChanged {
  const _$LoginUsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.loginUsernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUsernameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$LoginUsernameChangedCopyWith<_$LoginUsernameChanged> get copyWith =>
      __$$LoginUsernameChangedCopyWithImpl<_$LoginUsernameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitiated,
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function() loginSubmitted,
  }) {
    return loginUsernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
  }) {
    return loginUsernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginUsernameChanged != null) {
      return loginUsernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitiated value) loginInitiated,
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
  }) {
    return loginUsernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
  }) {
    return loginUsernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginUsernameChanged != null) {
      return loginUsernameChanged(this);
    }
    return orElse();
  }
}

abstract class LoginUsernameChanged implements LoginEvent {
  const factory LoginUsernameChanged(final String username) =
      _$LoginUsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoginUsernameChangedCopyWith<_$LoginUsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginPasswordChangedCopyWith<$Res> {
  factory _$$LoginPasswordChangedCopyWith(_$LoginPasswordChanged value,
          $Res Function(_$LoginPasswordChanged) then) =
      __$$LoginPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$LoginPasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginPasswordChangedCopyWith<$Res> {
  __$$LoginPasswordChangedCopyWithImpl(_$LoginPasswordChanged _value,
      $Res Function(_$LoginPasswordChanged) _then)
      : super(_value, (v) => _then(v as _$LoginPasswordChanged));

  @override
  _$LoginPasswordChanged get _value => super._value as _$LoginPasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$LoginPasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginPasswordChanged implements LoginPasswordChanged {
  const _$LoginPasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.loginPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$LoginPasswordChangedCopyWith<_$LoginPasswordChanged> get copyWith =>
      __$$LoginPasswordChangedCopyWithImpl<_$LoginPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitiated,
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function() loginSubmitted,
  }) {
    return loginPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
  }) {
    return loginPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginPasswordChanged != null) {
      return loginPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitiated value) loginInitiated,
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
  }) {
    return loginPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
  }) {
    return loginPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginPasswordChanged != null) {
      return loginPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class LoginPasswordChanged implements LoginEvent {
  const factory LoginPasswordChanged(final String password) =
      _$LoginPasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoginPasswordChangedCopyWith<_$LoginPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSubmittedCopyWith<$Res> {
  factory _$$LoginSubmittedCopyWith(
          _$LoginSubmitted value, $Res Function(_$LoginSubmitted) then) =
      __$$LoginSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSubmittedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginSubmittedCopyWith<$Res> {
  __$$LoginSubmittedCopyWithImpl(
      _$LoginSubmitted _value, $Res Function(_$LoginSubmitted) _then)
      : super(_value, (v) => _then(v as _$LoginSubmitted));

  @override
  _$LoginSubmitted get _value => super._value as _$LoginSubmitted;
}

/// @nodoc

class _$LoginSubmitted implements LoginSubmitted {
  const _$LoginSubmitted();

  @override
  String toString() {
    return 'LoginEvent.loginSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitiated,
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function() loginSubmitted,
  }) {
    return loginSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
  }) {
    return loginSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitiated value) loginInitiated,
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class LoginSubmitted implements LoginEvent {
  const factory LoginSubmitted() = _$LoginSubmitted;
}

/// @nodoc
mixin _$LoginState {
  FormzStatus get status => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Username username, Password password});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status, Username username, Password password});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? status = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.status, required this.username, required this.password});

  @override
  final FormzStatus status;
  @override
  final Username username;
  @override
  final Password password;

  @override
  String toString() {
    return 'LoginState(status: $status, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final FormzStatus status,
      required final Username username,
      required final Password password}) = _$_LoginState;

  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
