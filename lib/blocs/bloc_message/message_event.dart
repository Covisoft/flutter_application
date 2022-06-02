part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.onMessage(
      {required String message,
      String? action,
      VoidCallback? onPressed,
      int? duration}) = OnMessage;
}
