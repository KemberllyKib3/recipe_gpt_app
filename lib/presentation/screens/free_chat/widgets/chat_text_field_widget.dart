import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';

class ChatTextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onSendPressed;

  const ChatTextFieldWidget({
    super.key,
    required this.controller,
    required this.onSendPressed,
  });

  @override
  State<ChatTextFieldWidget> createState() => _ChatTextFieldWidgetState();
}

class _ChatTextFieldWidgetState extends State<ChatTextFieldWidget> {
  bool hasText = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
        controller: widget.controller,
        cursorColor: AppColors.white,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: AppColors.white),
        onChanged: (value) => setState(() {
          hasText = value.isNotEmpty;
        }),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.prompt,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: IconButton(
            disabledColor: AppColors.gray,
            onPressed:
                hasText ? () => widget.onSendPressed(widget.controller.text) : null,
            icon: Icon(
              Icons.send,
              color: hasText ? AppColors.white : null,
            ),
          ),
          hintText: 'ask something...',
          hintStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.gray),
        ),
      ),
    );
  }
}
