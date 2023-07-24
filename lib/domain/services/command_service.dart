import 'package:recipe_gpt/domain/entities/command.dart';

abstract class CommandService {
  String prepare(Command command);
}
