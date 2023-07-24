import 'package:recipe_gpt/data/datasources/nutrition_facts_datasource.dart';
import 'package:recipe_gpt/domain/entities/nutrition_facts.dart';

class NutritionFactsInMemoryImpl implements NutritionFactsDatasource {
  final List<NutritionFacts> nutritionFacts = [];

  @override
  Future<void> delete({required String recipeId}) async {
    nutritionFacts.removeWhere((element) => element.recipeId == recipeId);
  }

  @override
  Future<NutritionFacts> get({required String recipeId}) async {
    return Future.value(
        nutritionFacts.firstWhere((element) => element.recipeId == recipeId));
  }

  @override
  Future<void> save({required NutritionFacts nutritionFacts}) async {
    this
        .nutritionFacts
        .removeWhere((element) => element.recipeId == nutritionFacts.recipeId);
    this.nutritionFacts.add(nutritionFacts);
  }
}
