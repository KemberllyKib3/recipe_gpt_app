import 'package:recipe_gpt/domain/entities/user.dart';

abstract class UserRepository {
  Future<User?> get();
  Future<bool> hasUser();
  Future<void> save(User user);
  Future<void> delete();
}
