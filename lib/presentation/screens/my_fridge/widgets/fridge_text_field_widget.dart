import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';

class FridgeTextFieldWidget extends StatefulWidget {
  final Function(String) onAddPressed;

  const FridgeTextFieldWidget({
    super.key,
    required this.onAddPressed,
  });

  @override
  State<FridgeTextFieldWidget> createState() => _FridgeTextFieldWidgetState();
}

class _FridgeTextFieldWidgetState extends State<FridgeTextFieldWidget> {
  bool hasText = false;
  TextEditingController controller = TextEditingController();
  final fridgeFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.white,
      focusNode: fridgeFocus,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: AppColors.white),
      onChanged: (value) => setState(() {
        hasText = value.isNotEmpty;
      }),
      onSubmitted: (value) {
        if (value.isNotEmpty) {
          widget.onAddPressed(value);
          controller.clear();
        }
        FocusScope.of(context).requestFocus(fridgeFocus);
      },
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
          disabledColor: AppColors.gray.withOpacity(0.5),
          onPressed: hasText
              ? () {
                  widget.onAddPressed(controller.text);
                  controller.clear();
                }
              : null,
          icon: Icon(
            Icons.add_circle_outline_rounded,
            color: hasText ? AppColors.white : null,
          ),
        ),
        hintText: 'type something to add...',
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: AppColors.gray),
      ),
    );
  }
}
