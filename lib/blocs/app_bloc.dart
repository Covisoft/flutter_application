import 'package:flutter_app/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class AppBloc {
  final AuthenticationRepository authenticationRepository =
      AuthenticationRepository();
  final UserRepository userRepository = UserRepository();

  static final applicationCubit = ApplicationCubit();
  static final languageCubit = LanguageCubit();
  static final userCubit = UserCubit();
  static final messageBloc = MessageBloc();
  static final authenticationBloc = AuthenticationBloc();
  static final loginBloc = LoginBloc();

  static final List<BlocProvider> providers = [
    BlocProvider<ApplicationCubit>(
      create: (context) => applicationCubit,
    ),
    BlocProvider<LanguageCubit>(
      create: (context) => languageCubit,
    ),

    BlocProvider<LoginBloc>(
      create: (context) => loginBloc,
    ),
    BlocProvider<UserCubit>(
      create: (context) => userCubit,
    ),
    BlocProvider<MessageBloc>(
      create: (context) => messageBloc,
    ),
    BlocProvider<AuthenticationBloc>(
      create: (context) => authenticationBloc,
    ),
  ];

  static void dispose() {
    applicationCubit.close();
    languageCubit.close();
    messageBloc.close();
  }

  ///Singleton factory
  static final AppBloc _instance = AppBloc._internal();

  factory AppBloc() {
    return _instance;
  }

  AppBloc._internal();
}
