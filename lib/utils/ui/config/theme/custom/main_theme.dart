import 'package:explore/utils/logic/state/bloc/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../interfaces/custom_theme.dart';

class MainTheme extends CustomTheme {
  static final MainTheme instance = MainTheme._init();

  MainTheme._init();

  @override
  ThemeData getTheme({
    required BuildContext context,
    required ThemeData modeThemeData,
  }) {
    return modeThemeData.copyWith(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: context.watch<ThemeBloc>().state.appColors.main,
      ),
      scaffoldBackgroundColor:
          context.watch<ThemeBloc>().state.appColors.second,
    );
  }
}
