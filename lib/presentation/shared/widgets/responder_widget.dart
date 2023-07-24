import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_gpt/shared/constants.dart';
import 'package:recipe_gpt/shared/enums/enums.dart';
import 'package:recipe_gpt/presentation/shared/utils/widget_functions.dart';
import 'package:recipe_gpt/presentation/shared/widgets/custom_toast_widget.dart';
import 'package:recipe_gpt/presentation/shared/widgets/small_action_button_widget.dart';

class ResponderWidget extends StatelessWidget {
  final String text;

  const ResponderWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 13, 20, 13),
      decoration: const BoxDecoration(
        color: AppColors.gpt,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SmallActionButtonWidget(
            icon: Icons.copy_outlined,
            label: "copy to clipboard",
            onTap: () {
              Clipboard.setData(ClipboardData(text: text));

              CustomToastWidget.show(
                context,
                typeToast: TypeToastEnum.normal,
                message: "Copied to clipboard!",
              );
            },
          ),
        ],
      ),
    );
  }
}
