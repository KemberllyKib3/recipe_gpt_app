import 'package:recipe_gpt/data/datasources/user_datasource.dart';
import 'package:recipe_gpt/domain/entities/user.dart';

class UserInMemoryImpl implements UserDatasource {
  User? user;

  @override
  Future<void> delete() async {
    user = null;
  }

  @override
  Future<User> get() async {
    return Future.value(user);
  }

  @override
  Future<bool> hasUser() async {
    return Future.value(user != null);
  }

  @override
  Future<User> save({required User user}) async {
    this.user = user;
    return Future.value(user);
  }
}
