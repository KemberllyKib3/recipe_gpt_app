import 'package:recipe_gpt/data/datasources/recipe_datasource.dart';
import 'package:recipe_gpt/domain/entities/recipe.dart';

class RecipeInMemoryImpl implements RecipeDatasource {
  final List<Recipe> recipes = [];

  @override
  Future<void> delete({required String id}) async {
    recipes.removeWhere((element) => element.id == id);
  }

  @override
  Future<Recipe> get({required String id}) async {
    return Future.value(recipes.firstWhere((element) => element.id == id));
  }

  @override
  Future<List<Recipe>> getAll(
    String? search, {
    required int offset,
    required int limit,
  }) async {
    final result = recipes
        .where((element) =>
            element.title!.contains(search ?? '') ||
            element.description!.contains(search ?? ''))
        .toList();
    return Future.value(result.skip(offset).take(limit).toList());
  }

  @override
  Future<void> save({required Recipe recipe}) async {
    recipes.removeWhere((element) => element.id == recipe.id);
    recipes.add(recipe);
  }
}
