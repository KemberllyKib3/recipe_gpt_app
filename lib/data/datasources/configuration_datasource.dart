import 'package:recipe_gpt/domain/entities/entities.dart';

abstract class ConfigurationDatasource {
  Future<void> delete();

  Future<bool> hasConfiguration();

  Future<Configuration> get();
  
  Future<void> save({required Configuration configuration});
}
