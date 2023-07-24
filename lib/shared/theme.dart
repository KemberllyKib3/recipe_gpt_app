import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_gpt/shared/app_colors.dart';

const String appName = 'Recipe GPT';

ThemeData buildTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    scaffoldBackgroundColor: AppColors.background,
    fontFamily: GoogleFonts.poppins().fontFamily,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
      },
    ),
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.all(10),
      iconColor: AppColors.black,
      tileColor: AppColors.white,
      textColor: AppColors.black,
      horizontalTitleGap: 10,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconSize: MaterialStateProperty.all(25),
        padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      elevation: 0,
      titleSpacing: 0,
      backgroundColor: AppColors.darkerBackground,
      actionsIconTheme: IconThemeData(
        color: AppColors.white,
        size: 25,
        opticalSize: 30,
      ),
      iconTheme: IconThemeData(
        color: AppColors.white,
        size: 25,
        opticalSize: 30,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.white,
      elevation: 1,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.white,
      selectionColor: AppColors.gray.withOpacity(0.8),
      selectionHandleColor: AppColors.white,
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: AppColors.darkerBackground,
      selectedColor: AppColors.gray,
      iconTheme: IconThemeData(color: AppColors.white, size: 15),
      padding: EdgeInsets.all(5),
      labelStyle: TextStyle(color: AppColors.white),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme(
      const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
