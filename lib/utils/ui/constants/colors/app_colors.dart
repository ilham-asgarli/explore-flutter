import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  static AppColors instance = AppColors.init();

  AppColors.init();

  Color main = HexColor("#1C2029");
  Color second = HexColor("#F6F6F6");
  Color third = Colors.black;
  Color fourth = Colors.white;

  Color light = Colors.white;
  Color dark = Colors.grey[850]!;

  Color shimmer = HexColor("#1C2029");
  Color shimmerBase = HexColor("#1C2029").withAlpha(100);
  Color shimmerHighLight = HexColor("#1C2029").withAlpha(50);

  Color defaultShimmerBase = Colors.grey[300]!;
  Color defaultShimmerHighLight = Colors.grey[100]!;

  LinearGradient buttonGradient = LinearGradient(
    colors: [
      HexColor("#47C522"),
      HexColor("#99AF09"),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
