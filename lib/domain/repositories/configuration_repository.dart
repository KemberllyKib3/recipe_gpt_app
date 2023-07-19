import 'package:recipe_gpt/domain/models/models.dart';

abstract class ConfigurationRepository {
  Future<Configuration?> get();
  Future<void> save({Configuration? configuration});
  Future<void> delete();
}
