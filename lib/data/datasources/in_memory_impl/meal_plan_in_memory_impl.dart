import 'package:recipe_gpt/data/datasources/meal_plan_datasource.dart';
import 'package:recipe_gpt/domain/entities/meal_plan.dart';

class MealPlanInMemoryImpl implements MealPlanDatasource {
  final List<MealPlan> mealPlans = [];

  @override
  Future<void> delete({required String id}) async {
    mealPlans.removeWhere((element) => element.id == id);
  }

  @override
  Future<MealPlan> get({required String id}) async {
    return Future.value(mealPlans.firstWhere((element) => element.id == id));
  }

  @override
  Future<List<MealPlan>> getAll(
    String? search, {
    required int offset,
    required int limit,
  }) async {
    final result = mealPlans
        .where((element) =>
            element.title!.contains(search ?? '') ||
            element.description!.contains(search ?? ''))
        .toList();
    return Future.value(result.skip(offset).take(limit).toList());
  }

  @override
  Future<void> save({required MealPlan mealPlan}) async {
    mealPlans.removeWhere((element) => element.id == mealPlan.id);
    mealPlans.add(mealPlan);
  }
}
