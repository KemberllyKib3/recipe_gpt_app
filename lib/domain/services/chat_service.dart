import 'package:recipe_gpt/domain/models/models.dart';

abstract class ChatService {
  Future<Message> send({required String command});
}
