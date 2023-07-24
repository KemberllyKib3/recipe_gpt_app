import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/app_colors.dart';
import 'package:recipe_gpt/shared/enums/enums.dart';

class CustomToastWidget {
  static void show(
    BuildContext context, {
    required String message,
    TypeToastEnum typeToast = TypeToastEnum.normal,
    Widget? trailing,
    Duration? duration,
    double width = 300,
    DismissDirection? dismissDirection,
  }) {
    _onWidgetDidBuild(() {
      Color color = typeToast.color;
      Color colorText = typeToast.textColor;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: colorText),
                ),
              ),
              if (trailing != null) const SizedBox(width: 10),
              if (trailing != null) trailing
            ],
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: AppColors.darkerBackground,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: width,
          backgroundColor: color,
          duration: duration ?? const Duration(seconds: 3),
          dismissDirection: dismissDirection ?? DismissDirection.down,
        ),
      );
    });
  }

  static void hideToast(BuildContext context) => _onWidgetDidBuild(() {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      });

  static void _onWidgetDidBuild(Function callback) =>
      WidgetsBinding.instance.addPostFrameCallback((_) {
        callback();
      });
}
