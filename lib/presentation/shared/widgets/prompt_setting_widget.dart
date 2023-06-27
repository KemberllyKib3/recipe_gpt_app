import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';

class PromptSettingWidget extends StatelessWidget {
  final String title;
  final Widget setting;

  const PromptSettingWidget({
    super.key,
    required this.title,
    required this.setting,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          title.toLowerCase(),
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.white),
        ),
        const SizedBox(height: 5),
        Row(children: [Expanded(child: setting)]),
      ],
    );
  }
}
