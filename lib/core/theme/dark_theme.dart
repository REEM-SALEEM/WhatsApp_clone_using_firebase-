import 'package:flutter/material.dart';
import 'package:watsappclone/core/color/colors.dart';
import 'package:watsappclone/core/theme/custom_theme_extension.dart';

ThemeData darktheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    dialogBackgroundColor: Coloors.backgroundDark,
    scaffoldBackgroundColor: Coloors.backgroundDark,
    extensions: [CustomThemeExtension.darkMode],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: Coloors.greenDark,
          foregroundColor: Coloors.backgroundDark,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Coloors.greyBackground,
        modalBackgroundColor: Coloors.greyBackground,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)))),
  );
}
