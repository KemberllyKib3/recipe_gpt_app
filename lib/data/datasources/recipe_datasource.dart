import 'package:recipe_gpt/domain/entities/entities.dart';

abstract class RecipeDatasource {
  Future<void> delete({required String id});

  Future<List<Recipe>> getAll(
    String? search, {
    required int offset,
    required int limit,
  });

  Future<Recipe?> get({required String id});

  Future<void> save({required Recipe recipe});
}
