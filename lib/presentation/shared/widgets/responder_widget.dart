import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/small_action_button_widget.dart';

class ResponderWidget extends StatelessWidget {
  final String text;

  const ResponderWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 13, 20, 13),
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
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("copied to clipboard"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
