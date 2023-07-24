import 'package:recipe_gpt/domain/entities/entities.dart';

abstract class RecipeRepository {
  Future<void> save(Recipe recipe);

  Future<void> delete(String id);

  Future<Recipe> get(String id);

  Future<bool> hasRecipe(String? id);

  Future<List<Recipe>> getRecipes(
    String? search, {
    required int offset,
    required int limit,
  });
}
