import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/app_colors.dart';

class ActionButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const ActionButtonWidget({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.add,
                color: AppColors.white,
              ),
              Text(
                label.toLowerCase(),
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
