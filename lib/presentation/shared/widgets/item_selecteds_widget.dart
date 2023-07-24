import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/constants.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_chip_widget.dart';

class ItemSelectedsWidget extends StatefulWidget {
  final List<String> items;
  final Function(String) onDelete;

  const ItemSelectedsWidget({
    super.key,
    required this.items,
    required this.onDelete,
  });

  @override
  State<ItemSelectedsWidget> createState() => _ItemSelectedsWidgetState();
}

class _ItemSelectedsWidgetState extends State<ItemSelectedsWidget> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 5,
      runSpacing: 5,
      children: widget.items
          .map(
            (e) => ItemChipWidget.withIcon(
              label: e,
              trailing: IconButton(
                icon: const Icon(
                  Icons.close,
                  size: 15,
                  color: AppColors.white,
                ),
                onPressed: () => widget.onDelete(e),
              ),
            ),
          )
          .toList(),
    );
  }
}
