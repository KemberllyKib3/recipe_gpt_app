import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/constants.dart';

class ListTileWidget extends StatefulWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onTap;
  final Widget? trailing;
  final Widget? bottom;
  final Color color;

  factory ListTileWidget.expandable({
    required String label,
    required VoidCallback onTap,
    required Widget trailing,
    required Widget bottom,
    IconData? leading,
    Color color = AppColors.black,
  }) {
    return ListTileWidget(
      label: label,
      icon: leading,
      onTap: onTap,
      color: color,
      trailing: trailing,
      bottom: bottom,
    );
  }

  factory ListTileWidget.simple({
    required String label,
    IconData? leading,
    required VoidCallback onTap,
    Color color = AppColors.black,
  }) {
    return ListTileWidget(
      label: label,
      icon: leading,
      onTap: onTap,
      color: color,
      trailing: null,
      bottom: null,
    );
  }

  const ListTileWidget({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
    required this.color,
    required this.trailing,
    required this.bottom,
  }) : assert((onTap == null && trailing != null) ||
            (onTap != null && trailing == null));

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      leading: Icon(widget.icon, color: widget.color, size: 20),
      title: Text(
        widget.label,
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: widget.color),
      ),
      onTap: widget.onTap,
      trailing: widget.trailing,
      subtitle: widget.bottom,
    );
  }
}
