import 'package:recipe_gpt/domain/entities/entities.dart';

abstract class NutritionFactsDatasource {
  Future<void> delete({required String recipeId});

  Future<NutritionFacts> get({required String recipeId});

  Future<void> save({required NutritionFacts nutritionFacts});
}
