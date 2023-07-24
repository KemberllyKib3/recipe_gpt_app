import 'package:recipe_gpt/domain/entities/entities.dart';

abstract class MealPlanRepository {
  Future<void> save(MealPlan mealPlan);

  Future<void> delete(String id);

  Future<MealPlan> get(String id);

  Future<bool> hasMealPlan(String? id);

  Future<List<MealPlan>> getPlans(
    String? search, {
    required int offset,
    required int limit,
  });
}
