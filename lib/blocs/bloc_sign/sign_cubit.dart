// import 'package:bloc/bloc.dart';
// import 'package:flutter_app/blocs/bloc.dart';
// import 'package:flutter_app/common/configs/config.dart';
// import 'package:flutter_app/models/model.dart';
// import 'package:flutter_app/repository/repository.dart';

// enum SignState { init, signIn, signOut }

// class SignCubit extends Cubit<SignState> {
//   SignCubit() : super(SignState.init);

//   ///On Login
//   void onLogin({
//     required String username,
//     required String password,
//   }) async {
//     ///Notify
//     emit(SignState.signIn);

//     ///Attach token push
//     await Application.setDeviceToken();

//     final result = await AuthenticationRepository.login(
//       username: username,
//       password: password,
//     );

//     if (result != null) {
//       ///Auth Sync
//       await AppBloc.authenticationCubit.onSave(result);
//     }

//     ///Notify
//     emit(SignState.init);
//   }

//   ///onLoginByToken
//   void onLoginByToken(String token) async {
//     ///Notify
//     emit(SignState.signIn);

//     ///Attach token push
//     await Application.setDeviceToken();

//     final user = UserModel.fromJson({
//       "user": {
//         "_id": "qrcode",
//         "available_earnings": "",
//         "username": "qrcode",
//       },
//       "token": token,
//     });

//     ///Save user to state
//     await AppBloc.userCubit.onSetUser(user);


//     ///Notify
//     emit(SignState.init);
//   }

//   Future<void> onLogOut() async {
//     ///Notify
//     emit(SignState.signOut);
//     await Future.delayed(const Duration(milliseconds: 500));
//     emit(SignState.init);
//   }
// }
