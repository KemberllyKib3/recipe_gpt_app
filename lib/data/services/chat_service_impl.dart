import 'package:recipe_gpt/domain/entities/message.dart';
import 'package:recipe_gpt/domain/services/chat_service.dart';

class ChatServiceImpl implements ChatService {
  @override
  Future<Message> send(String command) {
    // TODO: implement send
    final message = Message.ai(text: "retorno do service");

    return Future.delayed(const Duration(seconds: 1), () => message);
  }
}
