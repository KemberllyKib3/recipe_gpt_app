import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/widgets/item_chip_widget.dart';

class ItemSelectorWidget extends StatefulWidget {
  final List<String> items;
  final List<String> selectedItems;
  final ValueChanged<List<String>> onChanged;

  const ItemSelectorWidget({
    super.key,
    required this.items,
    required this.selectedItems,
    required this.onChanged,
  });

  @override
  State<ItemSelectorWidget> createState() => _ItemSelectorWidgetState();
}

class _ItemSelectorWidgetState extends State<ItemSelectorWidget> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 5,
      runSpacing: 5,
      children: widget.items
          .map(
            (e) => ItemChipWidget.selectable(
              label: e,
              isSelected: widget.selectedItems.contains(e),
              onTap: () {
                if (widget.selectedItems.contains(e)) {
                  widget.selectedItems.remove(e);
                } else {
                  widget.selectedItems.add(e);
                }
                widget.onChanged(widget.selectedItems);
                setState(() {});
              },
            ),
          )
          .toList(),
    );
  }
}
