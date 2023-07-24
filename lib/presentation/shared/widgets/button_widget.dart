import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/constants.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;

  const ButtonWidget({
    super.key,
    required this.label,
    required this.onTap,
    required this.color,
    required this.textColor,
  });

  factory ButtonWidget.primary({
    required label,
    required onTap,
  }) {
    return ButtonWidget(
      label: label,
      onTap: onTap,
      color: AppColors.black,
      textColor: AppColors.white,
    );
  }

  factory ButtonWidget.secondary({
    required label,
    required onTap,
    required color,
    required textColor,
  }) {
    return ButtonWidget(
      label: label,
      onTap: onTap,
      color: color,
      textColor: textColor,
    );
  }

  factory ButtonWidget.white({
    required label,
    required onTap,
  }) {
    return ButtonWidget(
      label: label,
      onTap: onTap,
      color: AppColors.white,
      textColor: AppColors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Ink(
          padding: const EdgeInsets.symmetric(vertical: 13),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              label.toLowerCase(),
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
