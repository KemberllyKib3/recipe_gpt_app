import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:recipe_gpt/domain/entities/entities.dart';
import 'package:recipe_gpt/domain/repositories/recipe_repository.dart';
import 'package:recipe_gpt/exceptions/failure.dart';

class RecipeUsecases {
  final RecipeRepository recipeRepository;

  RecipeUsecases({
    required this.recipeRepository,
  });

  Future<Either<Failure, List<Recipe>>> getRecipes(
    String? search, {
    required int offset,
  }) async {
    try {
      const limit = 10;

      final recipes = await recipeRepository.getRecipes(
        search,
        offset: offset,
        limit: limit,
      );

      return Right(recipes);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'RecipeUsecases.getRecipes',
        stackTrace: stackTrace,
      );

      return Left(ApplicationFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, Recipe>> get(String id) async {
    try {
      final recipe = await recipeRepository.get(id);

      return Right(recipe);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'RecipeUsecases.get',
        stackTrace: stackTrace,
      );

      return Left(ApplicationFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, void>> delete(String id) async {
    try {
      await recipeRepository.delete(id);

      return const Right(null);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'RecipeUsecases.delete',
        stackTrace: stackTrace,
      );

      return Left(ApplicationFailure(message: error.toString()));
    }
  }
}
