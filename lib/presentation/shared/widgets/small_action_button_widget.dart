import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';

class SmallActionButtonWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const SmallActionButtonWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Ink(
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: AppColors.white,
                size: 15,
              ),
              const SizedBox(width: 5),
              Text(
                label.toLowerCase(),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.white,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
