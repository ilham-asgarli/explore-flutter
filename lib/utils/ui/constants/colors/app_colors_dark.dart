import 'package:explore/utils/ui/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColorsDark extends AppColors {
  static AppColorsDark instance = AppColorsDark.init();

  AppColorsDark() : super.init();

  AppColorsDark.init() : super.init();

  @override
  Color get second => Colors.black;

  @override
  Color get third => Colors.white;

  @override
  Color get fourth => HexColor("#19182B");
}
