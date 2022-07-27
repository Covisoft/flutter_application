// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageEvent {
  String get message => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  VoidCallback? get onPressed => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? action,
            VoidCallback? onPressed, int? duration)
        onMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, String? action, VoidCallback? onPressed,
            int? duration)?
        onMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? action, VoidCallback? onPressed,
            int? duration)?
        onMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnMessage value) onMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnMessage value)? onMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnMessage value)? onMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageEventCopyWith<MessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res>;
  $Res call(
      {String message, String? action, VoidCallback? onPressed, int? duration});
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res> implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  final MessageEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEvent) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? action = freezed,
    Object? onPressed = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$OnMessageCopyWith<$Res>
    implements $MessageEventCopyWith<$Res> {
  factory _$$OnMessageCopyWith(
          _$OnMessage value, $Res Function(_$OnMessage) then) =
      __$$OnMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String message, String? action, VoidCallback? onPressed, int? duration});
}

/// @nodoc
class __$$OnMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements _$$OnMessageCopyWith<$Res> {
  __$$OnMessageCopyWithImpl(
      _$OnMessage _value, $Res Function(_$OnMessage) _then)
      : super(_value, (v) => _then(v as _$OnMessage));

  @override
  _$OnMessage get _value => super._value as _$OnMessage;

  @override
  $Res call({
    Object? message = freezed,
    Object? action = freezed,
    Object? onPressed = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$OnMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnMessage implements OnMessage {
  const _$OnMessage(
      {required this.message, this.action, this.onPressed, this.duration});

  @override
  final String message;
  @override
  final String? action;
  @override
  final VoidCallback? onPressed;
  @override
  final int? duration;

  @override
  String toString() {
    return 'MessageEvent.onMessage(message: $message, action: $action, onPressed: $onPressed, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMessage &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.action, action) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(action),
      onPressed,
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$OnMessageCopyWith<_$OnMessage> get copyWith =>
      __$$OnMessageCopyWithImpl<_$OnMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? action,
            VoidCallback? onPressed, int? duration)
        onMessage,
  }) {
    return onMessage(message, action, onPressed, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, String? action, VoidCallback? onPressed,
            int? duration)?
        onMessage,
  }) {
    return onMessage?.call(message, action, onPressed, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? action, VoidCallback? onPressed,
            int? duration)?
        onMessage,
    required TResult orElse(),
  }) {
    if (onMessage != null) {
      return onMessage(message, action, onPressed, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnMessage value) onMessage,
  }) {
    return onMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnMessage value)? onMessage,
  }) {
    return onMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnMessage value)? onMessage,
    required TResult orElse(),
  }) {
    if (onMessage != null) {
      return onMessage(this);
    }
    return orElse();
  }
}

abstract class OnMessage implements MessageEvent {
  const factory OnMessage(
      {required final String message,
      final String? action,
      final VoidCallback? onPressed,
      final int? duration}) = _$OnMessage;

  @override
  String get message;
  @override
  String? get action;
  @override
  VoidCallback? get onPressed;
  @override
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$OnMessageCopyWith<_$OnMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageState {
  String get text => throw _privateConstructorUsedError;
  MessageStatus get status => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  VoidCallback? get onPressed => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageStateCopyWith<MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
  $Res call(
      {String text,
      MessageStatus status,
      String? action,
      VoidCallback? onPressed,
      int? duration});
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? status = freezed,
    Object? action = freezed,
    Object? onPressed = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ShowMessageCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$$_ShowMessageCopyWith(
          _$_ShowMessage value, $Res Function(_$_ShowMessage) then) =
      __$$_ShowMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text,
      MessageStatus status,
      String? action,
      VoidCallback? onPressed,
      int? duration});
}

/// @nodoc
class __$$_ShowMessageCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res>
    implements _$$_ShowMessageCopyWith<$Res> {
  __$$_ShowMessageCopyWithImpl(
      _$_ShowMessage _value, $Res Function(_$_ShowMessage) _then)
      : super(_value, (v) => _then(v as _$_ShowMessage));

  @override
  _$_ShowMessage get _value => super._value as _$_ShowMessage;

  @override
  $Res call({
    Object? text = freezed,
    Object? status = freezed,
    Object? action = freezed,
    Object? onPressed = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_ShowMessage(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ShowMessage extends _ShowMessage {
  const _$_ShowMessage(
      {required this.text,
      required this.status,
      this.action,
      this.onPressed,
      this.duration})
      : super._();

  @override
  final String text;
  @override
  final MessageStatus status;
  @override
  final String? action;
  @override
  final VoidCallback? onPressed;
  @override
  final int? duration;

  @override
  String toString() {
    return 'MessageState(text: $text, status: $status, action: $action, onPressed: $onPressed, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowMessage &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.action, action) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(action),
      onPressed,
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$_ShowMessageCopyWith<_$_ShowMessage> get copyWith =>
      __$$_ShowMessageCopyWithImpl<_$_ShowMessage>(this, _$identity);
}

abstract class _ShowMessage extends MessageState {
  const factory _ShowMessage(
      {required final String text,
      required final MessageStatus status,
      final String? action,
      final VoidCallback? onPressed,
      final int? duration}) = _$_ShowMessage;
  const _ShowMessage._() : super._();

  @override
  String get text;
  @override
  MessageStatus get status;
  @override
  String? get action;
  @override
  VoidCallback? get onPressed;
  @override
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_ShowMessageCopyWith<_$_ShowMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
