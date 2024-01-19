import 'package:recipe_gpt/domain/entities/entities.dart';

class ChatState {
  final bool isInitializing;
  final bool isLoading;
  final bool isFailure;
  final bool isSuccess;
  final String? error;
  final List<Message>? messages;

  ChatState({
    required this.isInitializing,
    required this.isLoading,
    required this.isFailure,
    required this.isSuccess,
    required this.error,
    required this.messages,
  });

  factory ChatState.initial() {
    return ChatState(
      isInitializing: true,
      isLoading: false,
      isFailure: false,
      isSuccess: false,
      error: null,
      messages: null,
    );
  }

  factory ChatState.loading() {
    return ChatState(
      isInitializing: false,
      isLoading: true,
      isFailure: false,
      isSuccess: false,
      error: null,
      messages: null,
    );
  }

  factory ChatState.success(List<Message> messages) {
    return ChatState(
      isInitializing: false,
      isLoading: false,
      isFailure: false,
      isSuccess: true,
      error: null,
      messages: messages,
    );
  }

  factory ChatState.generated(List<Message> messages) {
    return ChatState(
      isInitializing: false,
      isLoading: false,
      isFailure: false,
      isSuccess: true,
      error: null,
      messages: messages,
    );
  }

  factory ChatState.failure(String error) {
    return ChatState(
      isInitializing: false,
      isLoading: false,
      isFailure: true,
      isSuccess: false,
      error: error,
      messages: null,
    );
  }
}
