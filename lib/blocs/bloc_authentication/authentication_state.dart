part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  const factory AuthenticationState(
      {@Default(AuthenticationStatus.unknown) AuthenticationStatus status,
      UserModel? user}) = _AuthenticationState;


  factory AuthenticationState.unknown() => const AuthenticationState();
  factory AuthenticationState.authenticated(UserModel user) =>
      AuthenticationState(
          status: AuthenticationStatus.authenticated, user: user);
  factory AuthenticationState.unauthenticated() =>
      const AuthenticationState(status: AuthenticationStatus.unauthenticated);
}
