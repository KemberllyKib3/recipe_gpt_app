import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/screens/free_chat/widgets/free_chat_body.dart';
import 'package:recipe_gpt/presentation/shared/widgets/app_bar_widget.dart';

class FreeChatPage extends StatelessWidget {
  const FreeChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primary(title: "free text chat"),
      body: const FreeChatBody(),
    );
  }
}
