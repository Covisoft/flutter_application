part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  const factory AuthenticationState(
      {@Default(AuthenticationStatus.unknown)
          AuthenticationStatus status}) = _AuthenticationState;

  factory AuthenticationState.unknown() => const AuthenticationState();
  factory AuthenticationState.authenticated() =>
      const AuthenticationState(status: AuthenticationStatus.authenticated);
  factory AuthenticationState.unauthenticated() =>
      const AuthenticationState(status: AuthenticationStatus.unauthenticated);
}
