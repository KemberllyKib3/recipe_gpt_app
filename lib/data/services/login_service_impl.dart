import 'package:recipe_gpt/domain/entities/user.dart';
import 'package:recipe_gpt/domain/services/login_service.dart';

class LoginServiceImpl implements LoginService {
  @override
  Future<User> signIn({
    required String email,
    required String password,
  }) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<User> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
