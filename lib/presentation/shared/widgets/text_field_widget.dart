import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscure;

  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.hint,
    this.obscure = false,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final focusNode = FocusNode();
  bool hasContent = false;
  bool isFocused = false;

  @override
  void initState() {
    focusNode.addListener(() {
      if (focusNode.hasFocus) setState(() => isFocused = focusNode.hasFocus);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.black, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            focusNode: focusNode,
            obscureText: widget.obscure,
            controller: widget.controller,
            onChanged: (value) => setState(() => hasContent = value.isNotEmpty),
            cursorColor: AppColors.black,
            decoration: InputDecoration(
              hintText: widget.hint,
              contentPadding: const EdgeInsets.symmetric(vertical: -5),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          if (hasContent)
            Text(
              widget.hint,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.gray),
            ),
        ],
      ),
    );
  }
}
