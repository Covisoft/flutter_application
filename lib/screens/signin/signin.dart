import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/widgets/widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  static const id = "SignIn";
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
      child: Container(
        alignment: Alignment.center,
        width: ConfigSize.screenWidth,
        child: SizedBox(
          width: ConfigSize.isMobile
              ? ConfigSize.screenWidth
              : ConfigSize.SIZE_MOBILE_MAX_WIDTH,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: ConfigSize.SPACING_SIZE_2),
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
                            width: ConfigSize.SPACING_SIZE_8,
                            height: ConfigSize.SPACING_SIZE_8,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(ConfigSize.RADIUS_SIZE_1),
                              image: const DecorationImage(
                                image: AssetImage(ConfigImages.icon),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: ConfigSize.SPACING_SIZE_2),
                          Padding(
                            padding: EdgeInsets.all(ConfigSize.SPACING_SIZE_3),
                            child: Text(
                              Translate.of(context).translate('app_slogan'),
                              style: ConfigText.headline6
                                  .copyWith(color: ConfigColor.primary),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          _UsernameInput(),
                          Padding(
                              padding: EdgeInsets.all(ConfigSize.SPACING_SIZE_2)),
                          _PasswordInput(),
                          Padding(
                              padding: EdgeInsets.all(ConfigSize.SPACING_SIZE_1)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [_RememberLogin(), _ForgotPassword()],
                          ),
                          Padding(
                              padding: EdgeInsets.all(ConfigSize.SPACING_SIZE_2)),
                          _LoginButton(),
                          Padding(
                              padding: EdgeInsets.all(ConfigSize.SPACING_SIZE_2)),
                          const _CreateAccount()
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: ConfigSize.SPACING_SIZE_1),
                Text(
                  Translate.of(context).translate('app_noted'),
                  style:
                      ConfigText.subtitle.copyWith(color: ConfigColor.primary),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: ConfigSize.SPACING_SIZE_1),
              ],
            ),
          ),
        ),
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
            style: ConfigText.body),
        TextSpan(
            text: Translate.of(context).translate('sign_up'),
            style: ConfigText.body)
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
        style: ConfigText.subtitle.copyWith(color: ConfigColor.primary),
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
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            AppBloc.loginBloc.add(RememberLoginChanged(!state.rememberLogin));
          },
          child: Row(
            children: [
              AppCheckBox(
                isChecked: state.rememberLogin,
                size: ConfigSize.SPACING_SIZE_3,
                checkedFillColor: ConfigColor.primary,
                unCheckedBorderColor: ConfigColor.primary,
              ),
              Text(
                Translate.of(context).translate('remember_login'),
                style: ConfigText.subtitle.copyWith(color: ConfigColor.primary),
              ),
            ],
          ),
        );
      },
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
                textStyle:
                    ConfigText.button.copyWith(color: ConfigColor.primaryLight),
                onPressed: () {
                  AppBloc.loginBloc.add(const LoginSubmitted());
                });
      },
    );
  }
}
