import 'package:recipe_gpt/domain/entities/entities.dart';

abstract class LoginService {
  Future<User> signIn({
    required String email,
    required String password,
  });
  Future<User> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });

  Future<void> signOut();
}
