import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:recipe_gpt/domain/entities/command.dart';
import 'package:recipe_gpt/domain/services/chat_service.dart';
import 'package:recipe_gpt/domain/services/command_service.dart';
import 'package:recipe_gpt/exceptions/failure.dart';

import '../entities/entities.dart';

class ChatUsecases {
  final ChatService chatService;
  final CommandService commandService;

  ChatUsecases({
    required this.chatService,
    required this.commandService,
  });

  Future<Either<Failure, List<Message>>> startChat() async {
    return Left(ServerFailure(message: 'Not implemented'));
    // try {
    //   final message = await chatService.start();

    //   return Right(message);
    // } on Failure catch (error, stackTrace) {
    //   log(
    //     error.toString(),
    //     time: DateTime.now(),
    //     name: 'ChatUsecases.startChat',
    //     stackTrace: stackTrace,
    //   );
    //   return Left(ServerFailure(message: error.toString()));
    // }
  }

  Future<Either<Failure, List<Message>>> regenerateChat() async {
    return Left(ServerFailure(message: 'Not implemented'));
    // try {
    //   final message = await chatService.regenerate();

    //   return Right(message);
    // } on Failure catch (error, stackTrace) {
    //   log(
    //     error.toString(),
    //     time: DateTime.now(),
    //     name: 'ChatUsecases.regenerateChat',
    //     stackTrace: stackTrace,
    //   );
    //   return Left(ServerFailure(message: error.toString()));
    // }
  }

  Future<Either<Failure, List<Message>>> closeChat() async {
    return Left(ServerFailure(message: 'Not implemented'));
    // try {
    //   final message = await chatService.close();

    //   return Right(message);
    // } on Failure catch (error, stackTrace) {
    //   log(
    //     error.toString(),
    //     time: DateTime.now(),
    //     name: 'ChatUsecases.closeChat',
    //     stackTrace: stackTrace,
    //   );
    //   return Left(ServerFailure(message: error.toString()));
    // }
  }

  Future<Either<Failure, List<Message>>> sendMessage({
    required Command command,
  }) async {
    try {
      final commandString = commandService.prepare(command);
      log(commandString);

      final message = await chatService.send(commandString);

      return Right([message]);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'ChatUsecases.sendMessage',
        stackTrace: stackTrace,
      );
      return Left(ServerFailure(message: error.toString()));
    }
  }
}
