import 'package:recipe_gpt/domain/models/user.dart';

abstract class UserRepository {
  Future<User?> get();
  Future<bool> hasUser();
  Future<void> save({User? user});
  Future<void> delete();
}
