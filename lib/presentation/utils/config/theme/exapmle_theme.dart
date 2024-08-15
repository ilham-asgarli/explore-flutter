import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../constants/colors/app_colors.dart';
import '../../constants/typography/app_typograpy.dart';
import '../../extensions/custom_color_extension.dart';
import '../../extensions/custom_text_theme_extension.dart';
import 'theme_interface.dart';

@named
@LazySingleton(as: ThemeInterface)
class ExampleTheme extends ThemeInterface {
  @override
  ThemeData getTheme(themeMode) {
    return ThemeData(
      useMaterial3: true,
      brightness:
          themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorSchemeSeed: AppColors.red,
      textTheme: const TextTheme(
        bodyMedium: AppTypography.bodyMedium,
      ),
      scaffoldBackgroundColor: const Color(0xFF1C2029),
      extensions: const [
        CustomColorExtension(
          primary: Color(0xFF1C2029),
          second: Colors.black,
          third: Colors.white,
          fourth: Color(0xFF19182B),
        ),
        CustomTextThemeExtension(
          example: AppTypography.example,
        ),
      ],
    );
  }

  @override
  SystemUiOverlayStyle systemUiOverlayStyle() {
    return const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF1C2029),
      systemNavigationBarColor: Color(0xFF1C2029),
    );
  }
}
