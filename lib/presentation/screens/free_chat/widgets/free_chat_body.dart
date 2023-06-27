import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/free_chat/widgets/chat_text_field_widget.dart';
import 'package:recipe_gpt/presentation/screens/free_chat/widgets/free_chat_empty_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/responder_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/sender_widget.dart';

class FreeChatBody extends StatefulWidget {
  const FreeChatBody({super.key});

  @override
  State<FreeChatBody> createState() => _FreeChatBodyState();
}

class _FreeChatBodyState extends State<FreeChatBody> {
  final TextEditingController controller = TextEditingController();

  bool hasContent = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        !hasContent
            ? const FreeChatEmptyWidget()
            : const Expanded(
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SenderWidget(text: "I'm testing you, behave yourself."),
                      ResponderWidget(
                        text: "Hi. I'm GPT-3. I'm here to help you with "
                            "your recipes and cooking. Ask me anything! "
                            "I'm still learning, so I might not be able "
                            "to answer everything.",
                      )
                    ],
                  ),
                ),
              ),
        ChatTextFieldWidget(
          controller: controller,
          onSendPressed: (value) {},
        ),
      ],
    );
  }
}
