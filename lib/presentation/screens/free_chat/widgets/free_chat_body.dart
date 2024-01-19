import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/free_chat/widgets/chat_text_field_widget.dart';
import 'package:recipe_gpt/presentation/screens/free_chat/widgets/free_chat_empty_widget.dart';

class FreeChatBody extends StatefulWidget {
  const FreeChatBody({super.key});

  @override
  State<FreeChatBody> createState() => _FreeChatBodyState();
}

class _FreeChatBodyState extends State<FreeChatBody> {
  final TextEditingController controller = TextEditingController();

  bool hasContent = true;

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
                    children: [],
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
