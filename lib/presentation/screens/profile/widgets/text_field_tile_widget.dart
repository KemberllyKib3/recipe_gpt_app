import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_chip_widget.dart';

class TextFieldTileWidget extends StatefulWidget {
  final String initialText;
  final String hint;
  final IconData trailingIcon;
  final bool obscureText;
  final VoidCallback? onTapIcon;
  final void Function(String)? onSaved;
  final String? bottomButtonLabel;

  const TextFieldTileWidget({
    super.key,
    required this.initialText,
    required this.hint,
    required this.trailingIcon,
    this.onTapIcon,
    this.bottomButtonLabel = '',
    this.obscureText = false,
    this.onSaved,
  });

  @override
  State<TextFieldTileWidget> createState() => _TextFieldTileWidgetState();
}

class _TextFieldTileWidgetState extends State<TextFieldTileWidget> {
  late TextEditingController controller;
  bool hasContent = false;
  bool readOnly = true;

  @override
  void initState() {
    controller = TextEditingController(text: widget.initialText);
    hasContent = widget.initialText.isNotEmpty;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      decoration: BoxDecoration(
        border: !readOnly
            ? const Border(
                top: BorderSide(color: AppColors.gray),
                bottom: BorderSide(color: AppColors.gray),
              )
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: controller,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: AppColors.black),
                      obscureText: widget.obscureText,
                      readOnly: readOnly,
                      cursorColor: AppColors.black,
                      onChanged: (value) => setState(
                        () => hasContent = value.isNotEmpty,
                      ),
                      decoration: InputDecoration(
                        hintText: widget.hint,
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
              ),
              if (readOnly)
                IconButton(
                  icon: Icon(
                    widget.trailingIcon,
                    color: AppColors.gray,
                  ),
                  onPressed: () =>
                      widget.onTapIcon ?? setState(() => readOnly = !readOnly),
                ),
            ],
          ),
          if (!readOnly)
            ItemChipWidget.selectable(
              label: widget.bottomButtonLabel ?? '',
              isSelected: false,
              onTap: () {
                setState(() => readOnly = !readOnly);
                widget.onSaved?.call(controller.text);
              },
            ),
        ],
      ),
    );
  }
}
