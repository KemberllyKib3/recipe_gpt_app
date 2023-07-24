import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/app_colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final Widget? leading;
  final Color? backgroundColor;
  final Color? iconColor;

  factory AppBarWidget.transparent(
    BuildContext context, {
    required String title,
    List<Widget> actions = const [],
    Widget? leading,
  }) =>
      AppBarWidget(
        title: title,
        actions: actions,
        leading: leading,
        backgroundColor: Colors.transparent,
        iconColor: AppColors.black,
      );

  factory AppBarWidget.primary({
    required String title,
    List<Widget> actions = const [],
    Widget? leading,
  }) =>
      AppBarWidget(
        title: title,
        actions: actions,
        leading: leading,
      );

  const AppBarWidget({
    super.key,
    required this.title,
    this.actions = const [],
    this.leading,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          backgroundColor ?? Theme.of(context).appBarTheme.backgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: iconColor ?? Theme.of(context).appBarTheme.iconTheme?.color,
        size: 25,
      ),
      leading: leading,
      actions: actions,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
