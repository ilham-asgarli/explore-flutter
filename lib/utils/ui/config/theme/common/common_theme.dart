import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../logic/helpers/theme/theme_helper.dart';
import '../../../constants/colors/app_colors.dart';
import '../../../constants/enums/app_theme_enum.dart';
import '../interfaces/custom_theme.dart';

class CommonTheme {
  static final CommonTheme instance = CommonTheme._init();

  CommonTheme._init();

  ThemeData getTheme({
    required BuildContext context,
    required AppTheme appTheme,
    required ThemeMode themeMode,
  }) {
    CustomTheme customTheme = ThemeHelper.instance.getCustomTheme(appTheme);

    return customTheme
        .getTheme(
          context: context,
          modeThemeData:
              ThemeHelper.instance.getThemeDataWithThemeMode(themeMode),
        )
        .copyWith(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        );
  }

  SystemUiOverlayStyle systemUiOverlayStyle() {
    return SystemUiOverlayStyle(
      // status bar color
      statusBarColor: AppColors.instance.main,
      // status bar brightness
      statusBarBrightness: Brightness.light,
      // status barIcon Brightness
      statusBarIconBrightness: Brightness.light,
      // navigation bar color
      systemNavigationBarColor: AppColors.instance.main,
      // navigation bar icon
      systemNavigationBarIconBrightness: Brightness.light,
      // navigation bar divider color
      systemNavigationBarDividerColor: null,
    );
  }
}
