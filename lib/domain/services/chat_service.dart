import 'package:recipe_gpt/domain/entities/entities.dart';

abstract class ChatService {
  Future<Message> send(String command);
}
