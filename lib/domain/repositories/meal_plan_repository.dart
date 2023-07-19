import 'package:recipe_gpt/domain/models/models.dart';

abstract class MealPlanRepository {
  Future<void> save({MealPlan? recipe});
  Future<void> delete({required String id});
  Future<MealPlan?> get({required String id});
  Future<bool> hasMealPlan({required String? id});
  Future<List<MealPlan>> getAll({required int offset, required int limit});
  Future<List<MealPlan>> search({required String query});
}
