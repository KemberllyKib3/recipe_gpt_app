import 'package:recipe_gpt/domain/models/user.dart';

class ApplicationState {
  final bool isInitializing;
  final bool isLoading;
  final bool isAuthenticated;
  final User? user;
  final String? error;

  ApplicationState({
    required this.isInitializing,
    required this.isLoading,
    required this.isAuthenticated,
    required this.error,
    required this.user,
  });

  factory ApplicationState.initial() {
    return ApplicationState(
      isInitializing: true,
      isLoading: false,
      isAuthenticated: false,
      error: null,
      user: null,
    );
  }

  factory ApplicationState.loading() {
    return ApplicationState(
      isInitializing: false,
      isLoading: true,
      isAuthenticated: false,
      error: null,
      user: null,
    );
  }

  factory ApplicationState.success(User user) {
    return ApplicationState(
      isInitializing: false,
      isLoading: false,
      isAuthenticated: true,
      error: null,
      user: user,
    );
  }

  factory ApplicationState.failure(String error) {
    return ApplicationState(
      isInitializing: false,
      isLoading: false,
      isAuthenticated: true,
      error: error,
      user: null,
    );
  }

  @override
  String toString() {
    return '''ApplicationState {
      isInitializing: $isInitializing,
      isLoading: $isLoading,
      isAuthenticated: $isAuthenticated,
      error: $error,
      user: $user,
    }''';
  }
}
