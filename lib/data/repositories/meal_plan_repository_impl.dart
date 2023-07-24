import 'package:recipe_gpt/domain/entities/meal_plan.dart';
import 'package:recipe_gpt/domain/repositories/meal_plan_repository.dart';

class MealPlanRepositoryImpl implements MealPlanRepository {
  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<MealPlan> get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<MealPlan>> getPlans(String? search,
      {required int offset, required int limit}) {
    // TODO: implement getPlans
    throw UnimplementedError();
  }

  @override
  Future<bool> hasMealPlan(String? id) {
    // TODO: implement hasMealPlan
    throw UnimplementedError();
  }

  @override
  Future<void> save(MealPlan mealPlan) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
