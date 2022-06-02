import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/models/model.dart';
import 'package:flutter_app/repository/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationState.unknown()) {
    _mapEventToState();
    _authenticationStatusSubscription = AuthenticationRepository.status
        .listen((status) => add(AuthenticationStatusChanged(status)));
  }
  _mapEventToState() {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
  }

  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    AuthenticationRepository.dispose();
    return super.close();
  }

  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(AuthenticationState.unauthenticated());
      case AuthenticationStatus.authenticated:
        return emit(AuthenticationState.authenticated());
      default:
        return emit(AuthenticationState.unknown());
    }
  }

  void _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) {
    AppBloc.userCubit.onClear();
    AuthenticationRepository.logOut();
  }
}
