abstract class Failure implements Exception {
  String get message;
}

class ServerFailure implements Failure {
  @override
  final String message;
  ServerFailure({required this.message});
}

class ApplicationFailure implements Failure {
  @override
  final String message;
  ApplicationFailure({required this.message});
}

class OpenAIFailure implements Failure {
  @override
  final String message;
  OpenAIFailure({required this.message});
}
