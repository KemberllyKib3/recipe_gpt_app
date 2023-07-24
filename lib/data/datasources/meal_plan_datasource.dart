import 'package:recipe_gpt/domain/entities/entities.dart';

abstract class MealPlanDatasource {
  Future<void> delete({required String id});

  Future<MealPlan> get({required String id});

  Future<List<MealPlan>> getAll(
    String? search, {
    required int offset,
    required int limit,
  });

  Future<void> save({required MealPlan mealPlan});
}
