import 'package:flutter/material.dart';
import 'package:watsappclone/core/color/colors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static final lightmode = CustomThemeExtension(
    circleImageColor: const Color(0xFF25D366),
    greyColor: Coloors.greyLight,
    blueColor: Coloors.blueLight,
    langButtonBgColor: const Color(0xFFF7F8FA),
    langButtonHighlightColor: const Color(0xFFE8E8ED),
  );

  static final darkMode = CustomThemeExtension(
    circleImageColor: Coloors.greenDark,
    greyColor: Coloors.greyDark,
    blueColor: Coloors.blueDark,
    langButtonBgColor: const Color(0xFF182229),
    langButtonHighlightColor: const Color(0xFF09141A),
  );

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langButtonBgColor;
  final Color? langButtonHighlightColor;
  CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langButtonBgColor,
    this.langButtonHighlightColor,
  });
  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langButtonBgColor,
    Color? langButtonHighlightColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langButtonBgColor: langButtonBgColor ?? this.langButtonBgColor,
      langButtonHighlightColor:
          langButtonHighlightColor ?? this.langButtonHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
        circleImageColor:
            Color.lerp(circleImageColor, other.circleImageColor, t),
        greyColor: Color.lerp(greyColor, other.greyColor, t),
        blueColor: Color.lerp(blueColor, other.blueColor, t),
        langButtonBgColor:
            Color.lerp(langButtonBgColor, other.langButtonBgColor, t),
        langButtonHighlightColor: Color.lerp(
            langButtonHighlightColor, other.langButtonHighlightColor, t));
  }
}
