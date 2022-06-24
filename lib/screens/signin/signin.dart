import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/widgets/widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {
  @override
  void initState() {
    AppBloc.loginBloc.add(const LoginInitiated());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                image: AssetImage(ConfigImages.icon),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: Text(
                              Translate.of(context).translate('app_slogan'),
                              style: ConfigText.textTheme.bodyText2,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          _UsernameInput(),
                          const Padding(padding: EdgeInsets.all(12)),
                          _PasswordInput(),
                          const Padding(padding: EdgeInsets.all(12)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              _RememberLogin(),
                              _ForgotPassword()
                            ],
                          ),
                          const Padding(padding: EdgeInsets.all(12)),
                          _LoginButton(),
                          const Padding(padding: EdgeInsets.all(12)),
                          const _CreateAccount()
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  Translate.of(context).translate('app_noted'),
                  style: ConfigText.textTheme.caption,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class _CreateAccount extends StatelessWidget {
  const _CreateAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: Translate.of(context).translate('no_have_account'),
            style: ConfigText.textTheme.bodyText1),
        TextSpan(
            text: Translate.of(context).translate('sign_up'),
            style: ConfigText.primaryTextTheme.bodyText1)
      ]),
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  const _ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        Translate.of(context).translate('forgot_password'),
        style: ConfigText.textTheme.subtitle1,
      ),
    );
  }
}

class _RememberLogin extends StatefulWidget {
  const _RememberLogin({
    Key? key,
  }) : super(key: key);

  @override
  State<_RememberLogin> createState() => _RememberLoginState();
}

class _RememberLoginState extends State<_RememberLogin> {
  bool rememberLogin = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          rememberLogin = !rememberLogin;
        });
      },
      child: Row(
        children: [
          AppCheckBox(
            isChecked: rememberLogin,
            size: 21,
            checkedFillColor: Theme.of(context).primaryColor,
            unCheckedBorderColor: Theme.of(context).primaryColor,
          ),
          Text(Translate.of(context).translate('remember_login'),
              style: ConfigText.textTheme.subtitle1),
        ],
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return AppTextInput(
          key: const Key('loginForm_usernameInput_textField'),
          onChanged: (username) =>
              AppBloc.loginBloc.add(LoginUsernameChanged(username)),
          keyboardType: TextInputType.phone,
          labelText: Translate.of(context).translate('phone'),
          errorText: state.username.invalid
              ? Translate.of(context).translate('value_not_valid_phone')
              : null,
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return AppTextInput(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              AppBloc.loginBloc.add(LoginPasswordChanged(password)),
          obscureText: true,
          labelText: Translate.of(context).translate('password'),
          maxLines: 1,
          errorText: state.password.invalid
              ? Translate.of(context).translate('value_not_valid_password')
              : null,
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : AppButton(
                text: Translate.of(context).translate('sign_in'),
                mainAxisSize: MainAxisSize.max,
                disabled: !state.status.isValidated,
                onPressed: () {
                  AppBloc.loginBloc.add(const LoginSubmitted());
                });
      },
    );
  }
}
