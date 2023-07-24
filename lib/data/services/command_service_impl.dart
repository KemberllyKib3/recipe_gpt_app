import 'dart:io';

import 'package:recipe_gpt/domain/entities/command.dart';
import 'package:recipe_gpt/domain/services/command_service.dart';
import 'package:recipe_gpt/shared/enums/enums.dart';

class CommandServiceImpl implements CommandService {
  @override
  String prepare(Command command) {
    String result = "";

    if (command.type == TypeCommandEnum.freeTextCommand) {
      result = command.text!;
    } else {
      File file = File(command.type.scriptPath);

      String result = file.readAsStringSync();

      command.substitutions.forEach((key, value) {
        if (value is List) {
          value = value.join(', ');
        }
        result = result.replaceAll('[$key]', value.toString());
      });
    }

    return result;
  }
}
