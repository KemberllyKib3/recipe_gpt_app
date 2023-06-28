import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';

class MultiTextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final int maxLines;
  final String hint;

  const MultiTextFieldWidget({
    super.key,
    required this.controller,
    required this.maxLines,
    required this.hint,
  });

  @override
  State<MultiTextFieldWidget> createState() => _MultiTextFieldWidgetState();
}

class _MultiTextFieldWidgetState extends State<MultiTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      cursorColor: AppColors.white,
      maxLines: widget.maxLines,
      maxLength: 100,
      minLines: 2,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: AppColors.white),
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
        hintText: widget.hint.toLowerCase(),
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: AppColors.gray),
      ),
    );
  }
}
