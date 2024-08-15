import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/gen/assets.gen.dart';
import '../utils/config/router/core/main_router_service.dart';
import '../utils/constants/enums/app_enum.dart';
import '../utils/constants/router/main_router_constants.dart';
import '../utils/extensions/context_extension.dart';
import '../utils/extensions/theme_extension.dart';

class NewsStatistic extends StatelessWidget {
  final int? count;
  final Statistic statistic;
  final Color? color;
  final double iconSize;
  final double fontSize;
  final bool clickable;
  final Axis axis;
  final FontWeight? fontWeight;

  const NewsStatistic({
    super.key,
    this.count,
    required this.statistic,
    this.color,
    this.iconSize = 25,
    this.fontSize = 12,
    this.clickable = true,
    this.axis = Axis.horizontal,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (clickable) {
          switch (statistic) {
            case Statistic.comment:
              MainRouterService.instance.pushNamed(
                path: MainRouterConstants.newsComments,
              );
              break;
            case Statistic.like:
              break;
          }
        }
      },
      child: buildLayout(
        children: [
          ImageIcon(
            size: iconSize,
            color: color ?? context.theme.customColors.third,
            AssetImage(
              statistic == Statistic.comment
                  ? Assets.image.icComment.path
                  : Assets.image.icHeart.path,
            ),
          ),
          Visibility(
            visible: count != null,
            child: Text(
              count.toString(),
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: color ?? context.theme.customColors.third,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLayout({required List<Widget> children}) {
    switch (axis) {
      case Axis.horizontal:
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        );
      case Axis.vertical:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        );
    }
  }
}
