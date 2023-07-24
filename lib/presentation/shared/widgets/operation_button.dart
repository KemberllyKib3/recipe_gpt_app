import 'package:flutter/material.dart';
import 'package:recipe_gpt/shared/constants.dart';

class OperationButton extends StatelessWidget {
  /// 'minus' for - or 'plus' for +
  final String operation;
  final VoidCallback? onTap;

  const OperationButton(
      {super.key, required this.operation, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final IconData icon =
        operation == 'minus' ? Icons.remove_rounded : Icons.add_rounded;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          decoration: BoxDecoration(
            color: AppColors.darkerBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 0.2,
            ),
            alignment: Alignment.center,
            height: 50,
            child: Center(
              child: Icon(
                icon,
                size: 25,
                color: onTap != null ? AppColors.white : AppColors.white.withOpacity(0.3),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
