import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/app_colors.dart';

class ItemChipWidget extends StatelessWidget {
  final String label;
  final IconButton? trailing;
  final bool isSelected;
  final VoidCallback? onTap;
  final bool isExpandable;

  factory ItemChipWidget.withIcon({
    required String label,
    IconButton? trailing,
  }) =>
      ItemChipWidget(
        label: label,
        isSelected: false,
        onTap: null,
        trailing: trailing,
        isExpandable: false,
      );

  factory ItemChipWidget.selectable({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
    bool isExpandable = false,
  }) =>
      ItemChipWidget(
        label: label,
        isSelected: isSelected,
        onTap: onTap,
        trailing: null,
        isExpandable: isExpandable,
      );

  const ItemChipWidget({
    super.key,
    required this.label,
    required this.isSelected,
    required this.isExpandable,
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
          padding: (trailing != null)
              ? const EdgeInsets.only(left: 10)
              : const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.gray.withOpacity(0.5) : AppColors.darkerBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              isExpandable
                  ? Expanded(
                      child: Text(
                        label,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColors.white),
                      ),
                    )
                  : Text(
                      label,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.white),
                    ),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ),
    );
  }
}
