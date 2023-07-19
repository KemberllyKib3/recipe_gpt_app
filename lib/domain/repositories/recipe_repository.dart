import 'package:recipe_gpt/domain/models/models.dart';

abstract class RecipeRepository {
  Future<void> save({Recipe? recipe});
  Future<void> delete({required String id});
  Future<Recipe?> get({required String id});
  Future<bool> hasRecipe({required String? id});
  Future<List<Recipe>> getAll({required int offset, required int limit});
  Future<List<Recipe>> search({required String query});
}
