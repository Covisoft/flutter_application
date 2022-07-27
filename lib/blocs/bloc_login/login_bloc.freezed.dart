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
    required TResult Function(String password, String username) loginChanged,
    required TResult Function() loginSubmitted,
    required TResult Function(bool rememberLogin) rememberLoginChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitiated value) loginInitiated,
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginChanged value) loginChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RememberLoginChanged value) rememberLoginChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
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
    required TResult Function(String password, String username) loginChanged,
    required TResult Function() loginSubmitted,
    required TResult Function(bool rememberLogin) rememberLoginChanged,
  }) {
    return loginInitiated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
  }) {
    return loginInitiated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
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
    required TResult Function(LoginChanged value) loginChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RememberLoginChanged value) rememberLoginChanged,
  }) {
    return loginInitiated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
  }) {
    return loginInitiated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
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
    required TResult Function(String password, String username) loginChanged,
    required TResult Function() loginSubmitted,
    required TResult Function(bool rememberLogin) rememberLoginChanged,
  }) {
    return loginUsernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
  }) {
    return loginUsernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
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
    required TResult Function(LoginChanged value) loginChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RememberLoginChanged value) rememberLoginChanged,
  }) {
    return loginUsernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
  }) {
    return loginUsernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
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

  String get username;
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
    required TResult Function(String password, String username) loginChanged,
    required TResult Function() loginSubmitted,
    required TResult Function(bool rememberLogin) rememberLoginChanged,
  }) {
    return loginPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
  }) {
    return loginPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
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
    required TResult Function(LoginChanged value) loginChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RememberLoginChanged value) rememberLoginChanged,
  }) {
    return loginPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
  }) {
    return loginPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
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

  String get password;
  @JsonKey(ignore: true)
  _$$LoginPasswordChangedCopyWith<_$LoginPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginChangedCopyWith<$Res> {
  factory _$$LoginChangedCopyWith(
          _$LoginChanged value, $Res Function(_$LoginChanged) then) =
      __$$LoginChangedCopyWithImpl<$Res>;
  $Res call({String password, String username});
}

/// @nodoc
class __$$LoginChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginChangedCopyWith<$Res> {
  __$$LoginChangedCopyWithImpl(
      _$LoginChanged _value, $Res Function(_$LoginChanged) _then)
      : super(_value, (v) => _then(v as _$LoginChanged));

  @override
  _$LoginChanged get _value => super._value as _$LoginChanged;

  @override
  $Res call({
    Object? password = freezed,
    Object? username = freezed,
  }) {
    return _then(_$LoginChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginChanged implements LoginChanged {
  const _$LoginChanged(this.password, this.username);

  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.loginChanged(password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginChanged &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$LoginChangedCopyWith<_$LoginChanged> get copyWith =>
      __$$LoginChangedCopyWithImpl<_$LoginChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitiated,
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String password, String username) loginChanged,
    required TResult Function() loginSubmitted,
    required TResult Function(bool rememberLogin) rememberLoginChanged,
  }) {
    return loginChanged(password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
  }) {
    return loginChanged?.call(password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
    required TResult orElse(),
  }) {
    if (loginChanged != null) {
      return loginChanged(password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitiated value) loginInitiated,
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginChanged value) loginChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RememberLoginChanged value) rememberLoginChanged,
  }) {
    return loginChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
  }) {
    return loginChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
    required TResult orElse(),
  }) {
    if (loginChanged != null) {
      return loginChanged(this);
    }
    return orElse();
  }
}

abstract class LoginChanged implements LoginEvent {
  const factory LoginChanged(final String password, final String username) =
      _$LoginChanged;

  String get password;
  String get username;
  @JsonKey(ignore: true)
  _$$LoginChangedCopyWith<_$LoginChanged> get copyWith =>
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
    required TResult Function(String password, String username) loginChanged,
    required TResult Function() loginSubmitted,
    required TResult Function(bool rememberLogin) rememberLoginChanged,
  }) {
    return loginSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
  }) {
    return loginSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
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
    required TResult Function(LoginChanged value) loginChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RememberLoginChanged value) rememberLoginChanged,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
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
abstract class _$$RememberLoginChangedCopyWith<$Res> {
  factory _$$RememberLoginChangedCopyWith(_$RememberLoginChanged value,
          $Res Function(_$RememberLoginChanged) then) =
      __$$RememberLoginChangedCopyWithImpl<$Res>;
  $Res call({bool rememberLogin});
}

/// @nodoc
class __$$RememberLoginChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$RememberLoginChangedCopyWith<$Res> {
  __$$RememberLoginChangedCopyWithImpl(_$RememberLoginChanged _value,
      $Res Function(_$RememberLoginChanged) _then)
      : super(_value, (v) => _then(v as _$RememberLoginChanged));

  @override
  _$RememberLoginChanged get _value => super._value as _$RememberLoginChanged;

  @override
  $Res call({
    Object? rememberLogin = freezed,
  }) {
    return _then(_$RememberLoginChanged(
      rememberLogin == freezed
          ? _value.rememberLogin
          : rememberLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RememberLoginChanged implements RememberLoginChanged {
  const _$RememberLoginChanged(this.rememberLogin);

  @override
  final bool rememberLogin;

  @override
  String toString() {
    return 'LoginEvent.rememberLoginChanged(rememberLogin: $rememberLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RememberLoginChanged &&
            const DeepCollectionEquality()
                .equals(other.rememberLogin, rememberLogin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(rememberLogin));

  @JsonKey(ignore: true)
  @override
  _$$RememberLoginChangedCopyWith<_$RememberLoginChanged> get copyWith =>
      __$$RememberLoginChangedCopyWithImpl<_$RememberLoginChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginInitiated,
    required TResult Function(String username) loginUsernameChanged,
    required TResult Function(String password) loginPasswordChanged,
    required TResult Function(String password, String username) loginChanged,
    required TResult Function() loginSubmitted,
    required TResult Function(bool rememberLogin) rememberLoginChanged,
  }) {
    return rememberLoginChanged(rememberLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
  }) {
    return rememberLoginChanged?.call(rememberLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginInitiated,
    TResult Function(String username)? loginUsernameChanged,
    TResult Function(String password)? loginPasswordChanged,
    TResult Function(String password, String username)? loginChanged,
    TResult Function()? loginSubmitted,
    TResult Function(bool rememberLogin)? rememberLoginChanged,
    required TResult orElse(),
  }) {
    if (rememberLoginChanged != null) {
      return rememberLoginChanged(rememberLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitiated value) loginInitiated,
    required TResult Function(LoginUsernameChanged value) loginUsernameChanged,
    required TResult Function(LoginPasswordChanged value) loginPasswordChanged,
    required TResult Function(LoginChanged value) loginChanged,
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RememberLoginChanged value) rememberLoginChanged,
  }) {
    return rememberLoginChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
  }) {
    return rememberLoginChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitiated value)? loginInitiated,
    TResult Function(LoginUsernameChanged value)? loginUsernameChanged,
    TResult Function(LoginPasswordChanged value)? loginPasswordChanged,
    TResult Function(LoginChanged value)? loginChanged,
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RememberLoginChanged value)? rememberLoginChanged,
    required TResult orElse(),
  }) {
    if (rememberLoginChanged != null) {
      return rememberLoginChanged(this);
    }
    return orElse();
  }
}

abstract class RememberLoginChanged implements LoginEvent {
  const factory RememberLoginChanged(final bool rememberLogin) =
      _$RememberLoginChanged;

  bool get rememberLogin;
  @JsonKey(ignore: true)
  _$$RememberLoginChangedCopyWith<_$RememberLoginChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  FormzStatus get status => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get rememberLogin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {FormzStatus status,
      Username username,
      Password password,
      bool rememberLogin});
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
    Object? rememberLogin = freezed,
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
      rememberLogin: rememberLogin == freezed
          ? _value.rememberLogin
          : rememberLogin // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call(
      {FormzStatus status,
      Username username,
      Password password,
      bool rememberLogin});
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
    Object? rememberLogin = freezed,
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
      rememberLogin: rememberLogin == freezed
          ? _value.rememberLogin
          : rememberLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.status,
      required this.username,
      required this.password,
      required this.rememberLogin});

  @override
  final FormzStatus status;
  @override
  final Username username;
  @override
  final Password password;
  @override
  final bool rememberLogin;

  @override
  String toString() {
    return 'LoginState(status: $status, username: $username, password: $password, rememberLogin: $rememberLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.rememberLogin, rememberLogin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(rememberLogin));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final FormzStatus status,
      required final Username username,
      required final Password password,
      required final bool rememberLogin}) = _$_LoginState;

  @override
  FormzStatus get status;
  @override
  Username get username;
  @override
  Password get password;
  @override
  bool get rememberLogin;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
