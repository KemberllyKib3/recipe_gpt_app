import 'package:recipe_gpt/domain/entities/recipe.dart';
import 'package:recipe_gpt/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Recipe> get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<Recipe>> getRecipes(String? search,
      {required int offset, required int limit}) {
    // TODO: implement getRecipes
    throw UnimplementedError();
  }

  @override
  Future<bool> hasRecipe(String? id) {
    // TODO: implement hasRecipe
    throw UnimplementedError();
  }

  @override
  Future<void> save(Recipe recipe) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
