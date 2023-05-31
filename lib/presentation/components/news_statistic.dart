import 'package:explore/core/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/logic/constants/enums/app_enum.dart';
import '../../utils/logic/constants/router/main_router_constants.dart';
import '../../utils/logic/core/router/main_router_service.dart';
import '../../utils/logic/state/bloc/theme/theme_bloc.dart';

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
    Key? key,
    this.count,
    required this.statistic,
    this.color,
    this.iconSize = 25,
    this.fontSize = 12,
    this.clickable = true,
    this.axis = Axis.horizontal,
    this.fontWeight,
  }) : super(key: key);

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
            color: color ?? context.watch<ThemeBloc>().state.appColors.third,
            AssetImage(
              statistic == Statistic.comment
                  ? "ic_comment".toPNG
                  : "ic_heart".toPNG,
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
                  color:
                      color ?? context.watch<ThemeBloc>().state.appColors.third,
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
