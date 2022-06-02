part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const MessageState._();
  const factory MessageState(
      {required String text,
      required MessageStatus status,
      String? action,
      VoidCallback? onPressed,
      int? duration}) = _ShowMessage;

  factory MessageState.initial() =>
      const MessageState(text: '', status: MessageStatus.ide);
}

enum MessageStatus { ide, show, hide }
