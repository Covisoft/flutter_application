import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageState.initial()) {
    on<OnMessage>((event, emit) {
      emit(state.copyWith(
        status: MessageStatus.show,
        text: event.message,
        action: event.action,
        onPressed: event.onPressed,
        duration: event.duration,
      ));
      emit(state.copyWith(
        status: MessageStatus.ide,
      ));
    });
  }
}
