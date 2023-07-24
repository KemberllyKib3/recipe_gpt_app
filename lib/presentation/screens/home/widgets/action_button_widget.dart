import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_gpt/shared/app_colors.dart';
import 'package:recipe_gpt/shared/assets.dart';

class ActionButtonWidget extends StatelessWidget {
  final String label;
  final Widget? icon;
  final VoidCallback onTap;

  const ActionButtonWidget({
    super.key,
    required this.label,
    required this.onTap,
    this.icon,
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
              icon ??
                  SvgPicture.asset(
                    Assets.chefHat,
                    height: 25,
                    width: 25,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
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
