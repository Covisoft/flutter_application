import 'package:flutter/material.dart';
import 'package:flutter_app/app_container.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    AppBloc.applicationCubit.onSetup();
  }

  @override
  void dispose() {
    AppBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBloc.providers,
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, locale) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, theme) {
              return BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, auth) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: theme.lightTheme,
                    darkTheme: theme.darkTheme,
                    onGenerateRoute: Routes.generateRoute,
                    locale: locale,
                    localizationsDelegates: const [
                      Translate.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: AppLanguage.supportLanguage,
                    builder: DevicePreview.appBuilder,
                    home: Scaffold(
                      body: BlocListener<MessageBloc, MessageState>(
                        listener: (context, message) {
                          if (message.status == MessageStatus.show) {
                            SnackBarAction? _barAction;
                            if (message.action != null) {
                              _barAction = SnackBarAction(
                                label: Translate.of(context).translate(
                                  message.action!,
                                ),
                                onPressed: message.onPressed!,
                              );
                            }
                            final snackBar = SnackBar(
                              content: Text(
                                Translate.of(context).translate(
                                  message.text,
                                ),
                              ),
                              action: _barAction,
                              duration: Duration(
                                seconds: message.duration ?? 1,
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        },
                        child: BlocBuilder<ApplicationCubit, ApplicationState>(
                          builder: (context, application) {
                            if (application == ApplicationState.completed) {
                              if (auth.status ==
                                  AuthenticationStatus.authenticated) {
                                return const AppContainer();
                              } else {
                                return const SignIn();
                              }
                            }
                            return const SplashScreen();
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}