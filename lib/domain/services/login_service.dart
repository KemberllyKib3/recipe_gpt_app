abstract class LoginService {
  Future<void> signIn({
    required String email,
    required String password,
  });
  Future<void> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });

  Future<void> signOut();
}
