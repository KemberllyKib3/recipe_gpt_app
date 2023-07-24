import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:recipe_gpt/domain/entities/entities.dart';
import 'package:recipe_gpt/domain/repositories/meal_plan_repository.dart';
import 'package:recipe_gpt/domain/repositories/recipe_repository.dart';
import 'package:recipe_gpt/exceptions/failure.dart';

class MealPlanUsecases {
  final MealPlanRepository mealPlanRepository;
  final RecipeRepository recipeRepository;

  MealPlanUsecases({
    required this.mealPlanRepository,
    required this.recipeRepository,
  });

  Future<Either<Failure, List<MealPlan>>> getPlans(String? search,
      {required int offset}) async {
    try {
      const limit = 10;

      final mealPlans = await mealPlanRepository.getPlans(
        search,
        offset: 0,
        limit: limit,
      );
      return Right(mealPlans);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'MealPlanUsecases.getPlans',
        stackTrace: stackTrace,
      );

      return Left(ApplicationFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, MealPlan>> get({required String id}) async {
    try {
      final mealPlan = await mealPlanRepository.get(id);

      return Right(mealPlan);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'MealPlanUsecases.get',
        stackTrace: stackTrace,
      );

      return Left(ApplicationFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, void>> save({required MealPlan mealPlan}) async {
    try {
      await mealPlanRepository.save(mealPlan);

      return const Right(null);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'MealPlanUsecases.save',
        stackTrace: stackTrace,
      );

      return Left(ApplicationFailure(message: error.toString()));
    }
  }

  Future<Either<Failure, void>> delete({required String id}) async {
    try {
      await mealPlanRepository.delete(id);

      return const Right(null);
    } on Failure catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        name: 'MealPlanUsecases.delete',
        stackTrace: stackTrace,
      );

      return Left(ApplicationFailure(message: error.toString()));
    }
  }
}
