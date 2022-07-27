part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required FormzStatus status,
    required Username username,
    required Password password,
    required bool rememberLogin,
    
  }) = _LoginState;
  factory LoginState.initial() => const LoginState(
      username: Username.pure(),
      password: Password.pure(),
      rememberLogin: true,
      status: FormzStatus.pure);
}

enum UsernameValidationError { empty, invalid }

class Username extends FormzInput<String, UsernameValidationError> {
  const Username.pure() : super.pure('');
  const Username.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameValidationError? validator(String? value) {
    return value?.isNotEmpty == true ? null : UsernameValidationError.empty;
  }
}

enum PasswordValidationError { empty, invalid }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError? validator(String? value) {
    if (value?.isNotEmpty == true) {
      if (value!.length < 6) {
        return PasswordValidationError.invalid;
      }
      return null;
    }
    return PasswordValidationError.empty;
  }
}
