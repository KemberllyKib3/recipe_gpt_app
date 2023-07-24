import 'package:recipe_gpt/domain/entities/entities.dart';

abstract class UserDatasource {
  Future<void> delete();

  Future<bool> hasUser();

  Future<User> get();

  Future<User> save({required User user});
}
