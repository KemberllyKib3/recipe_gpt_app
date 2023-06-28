import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';

class PromptSettingWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget setting;

  const PromptSettingWidget({
    super.key,
    required this.title,
    required this.setting,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Text(
          title.toLowerCase(),
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.white),
        ),
        if (subtitle != null)
          Text(
            subtitle!.toLowerCase(),
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.gray),
          ),
        const SizedBox(height: 8),
        Row(children: [Expanded(child: setting)]),
      ],
    );
  }
}
