import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/app_colors.dart';

class ItemChipWidget extends StatelessWidget {
  final String label;
  final IconButton? trailing;
  final bool isSelected;
  final VoidCallback? onTap;

  factory ItemChipWidget.withIcon({
    required String label,
    IconButton? trailing,
  }) =>
      ItemChipWidget(
        label: label,
        isSelected: true,
        onTap: null,
        trailing: trailing,
      );

  factory ItemChipWidget.selectable({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) =>
      ItemChipWidget(
        label: label,
        isSelected: isSelected,
        onTap: onTap,
        trailing: null,
      );

  const ItemChipWidget({
    super.key,
    required this.label,
    required this.isSelected,
    this.trailing,
    this.onTap,
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
            color: isSelected ? AppColors.gray : AppColors.darkerBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.white),
              ),
              if (trailing != null) const SizedBox(width: 5),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ),
    );
  }
}
