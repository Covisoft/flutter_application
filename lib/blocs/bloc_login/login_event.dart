part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
    const factory LoginEvent.loginInitiated() = LoginInitiated;
  const factory LoginEvent.loginUsernameChanged(String username) =
      LoginUsernameChanged;
  const factory LoginEvent.loginPasswordChanged(String password) =
      LoginPasswordChanged;
  const factory LoginEvent.loginSubmitted() = LoginSubmitted;
}
