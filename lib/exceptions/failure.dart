abstract class Failure implements Exception {
  String get message;
}

/// This failure is thrown when the user tries to access the server but there is no internet connection
class ServerFailure implements Failure {
  @override
  final String message;
  ServerFailure({required this.message});
}

/// This failure is thrown when the apllication fails for any reason
class ApplicationFailure implements Failure {
  @override
  final String message;
  ApplicationFailure({required this.message});
}

/// This failure is thrown when the user tries to create a new Object
class CreationFailure implements Failure {
  @override
  final String message;
  CreationFailure({required this.message});
}

/// This failure is thrown when there is a problem with the openAI API
class OpenAIFailure implements Failure {
  @override
  final String message;
  OpenAIFailure({required this.message});
}
