import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/widgets/responder_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/sender_widget.dart';

class ResponseBody extends StatefulWidget {
  final String initialText;

  const ResponseBody({
    super.key,
    required this.initialText,
  });

  @override
  State<ResponseBody> createState() => _ResponseBodyState();
}

class _ResponseBodyState extends State<ResponseBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SenderWidget(text: widget.initialText),
                const ResponderWidget(
                  text: "Hi. I'm GPT-3. I'm here to help you with "
                      "your recipes and cooking. Ask me anything! "
                      "I'm still learning, so I might not be able "
                      "to answer everything.",
                ),
              ],
            ),
          ),
        ),
        const Column()
      ],
    );
  }
}
