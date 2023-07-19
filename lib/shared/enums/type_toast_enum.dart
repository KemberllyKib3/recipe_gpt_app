import 'package:flutter/material.dart';
import 'package:recipe_gpt/presentation/shared/app_colors.dart';

enum TypeToastEnum {
  success(AppColors.success, AppColors.black),
  error(AppColors.error, AppColors.white),
  info(AppColors.info, AppColors.white),
  warning(AppColors.warning, AppColors.black),
  normal(AppColors.background, AppColors.white);

  final Color color;
  final Color textColor;

  const TypeToastEnum(this.color, this.textColor);
}
