import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:recipe_gpt/domain/models/user.dart';
import 'package:recipe_gpt/domain/repositories/user_repository.dart';
import 'package:recipe_gpt/domain/services/login_service.dart';
import 'package:recipe_gpt/exceptions/failure.dart';

class LoginUsecases {
  final LoginService loginService;
  final UserRepository userRepository;

  LoginUsecases({
    required this.loginService,
    required this.userRepository,
  });

  Future<Either<Failure, User>> signIn() async {
    try {
      // var result = await loginService.signIn();
      final user = User(
        id: '1',
        firstName: 'John',
        lastName: 'Doe',
        email: 'teste@teste.com',
      );
      await userRepository.save(user: user);

      return Right(user);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'LoginUsecases.signIn',
        stackTrace: stackTrace,
      );
      return Left(ServerFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, User>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    try {
      // var result = await loginService.signUp();
      final user = User(
        id: '1',
        firstName: firstName,
        lastName: lastName,
        email: email,
      );
      await userRepository.save(user: user);

      return Right(user);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'LoginUsecases.signUp',
        stackTrace: stackTrace,
      );
      return Left(ServerFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, void>> signOut() async {
    try {
      // var result = await loginService.signOut();
      // await userRepository.delete();

      return const Right(null);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'LoginUsecases.signIn',
        stackTrace: stackTrace,
      );
      return Left(ServerFailure(message: error.toString()));
    }
  }
}
