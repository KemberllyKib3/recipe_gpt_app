import 'package:recipe_gpt/domain/entities/entities.dart';

abstract class ConfigurationRepository {
  Future<Configuration?> get();
  Future<void> save(Configuration configuration);
  Future<void> delete();
}
