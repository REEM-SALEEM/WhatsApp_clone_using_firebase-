import 'package:flutter/material.dart';
import 'package:watsappclone/core/color/colors.dart';
import 'package:watsappclone/core/theme/custom_theme_extension.dart';

ThemeData lighttheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    dialogBackgroundColor: Coloors.backgroundLight,
    scaffoldBackgroundColor: Coloors.backgroundLight,
    extensions: [CustomThemeExtension.lightmode],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: Coloors.greenLight,
          foregroundColor: Coloors.backgroundLight,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Coloors.backgroundLight,
        modalBackgroundColor: Coloors.backgroundLight,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)))),
  );
}
