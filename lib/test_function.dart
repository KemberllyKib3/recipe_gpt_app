// import 'dart:io';

// import 'package:recipe_gpt/shared/constants.dart';

// int countTokens(String text) {
//   text = text.replaceAll(RegExp(r'\[.*?\]'), 'token');
//   List<String> tokens = text.split(RegExp(r'\s+|\b'));
//   return tokens.where((token) => token.trim().isNotEmpty).length;
// }

// String commandToText(String filePath) {
//   File file = File(filePath);
//   String command = file.readAsStringSync();
//   command = command.replaceAll(RegExp(r'\[.*?\]'), 'token');
//   command = command.replaceAll(RegExp(r'\s+'), ' ');
//   return command;
// }

// int countTokensInFile(String filePath) {
//   try {
//     File file = File(filePath);
//     String text = file.readAsStringSync();
//     return countTokens(text);
//   } catch (e) {
//     print('Error reading file: $e');
//     return -1;
//   }
// }

// // Example usage:
// void main() {
//   List<String> filePaths = [
//     Assets.mealPlanCommand,
//     // Assets.fridgeCommand,
//     // Assets.surpriseDishCommand,
//     // Assets.romanticDinnerCommand,
//   ];
//   for (String filePath in filePaths) {
//     int numTokens = countTokensInFile(filePath);
//     String command = commandToText(filePath);

//     print('${filePath.split("/").last} has $numTokens tokens.');
//     print('Command: $command');
//   }
// }
