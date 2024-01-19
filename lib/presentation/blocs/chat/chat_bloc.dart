import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_gpt/domain/entities/command.dart';
import 'package:recipe_gpt/domain/usecases/chat_usecases.dart';
import 'package:recipe_gpt/presentation/blocs/chat/chat_event.dart';
import 'package:recipe_gpt/presentation/blocs/chat/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatUsecases chatUsecases;

  ChatBloc({
    required this.chatUsecases,
  }) : super(ChatState.initial()) {
    on<ChatStartedEvent>(_onChatStartedEvent);
    on<ChatRegenerateEvent>(_onChatRegenerateEvent);
    on<ChatClosedEvent>(_onChatClosedEvent);
    on<ChatSendMessageEvent>(_onChatSendMessageEvent);
  }

  FutureOr<void> _onChatStartedEvent(
    ChatStartedEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.loading());

    var result = await chatUsecases.startChat();

    result.fold(
      (failure) => emit(ChatState.failure(failure.message)),
      (success) => emit(ChatState.success(success)),
    );
  }

  FutureOr<void> _onChatRegenerateEvent(
    ChatRegenerateEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.loading());

    var result = await chatUsecases.regenerateChat();

    result.fold(
      (failure) => emit(ChatState.failure(failure.message)),
      (success) => emit(ChatState.success(success)),
    );
  }

  FutureOr<void> _onChatSendMessageEvent(
    ChatSendMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.loading());

    final command = Command.freeText(text: "text");

    var result = await chatUsecases.sendMessage(command: command);

    result.fold(
      (failure) => emit(ChatState.failure(failure.message)),
      (success) => emit(ChatState.success(success)),
    );
  }

  FutureOr<void> _onChatClosedEvent(
    ChatClosedEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.loading());

    var result = await chatUsecases.closeChat();

    result.fold(
      (failure) => emit(ChatState.failure(failure.message)),
      (success) => emit(ChatState.success(success)),
    );
  }
}
