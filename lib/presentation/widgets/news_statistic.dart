import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models/news/news.model.dart';
import '../../domain/usecases/feed/like.usecase.dart';
import '../../domain/usecases/feed/unlike.usecase.dart';
import '../../utils/di/injectable.dart';
import '../../utils/gen/assets.gen.dart';
import '../utils/config/router/core/main_router_service.dart';
import '../utils/constants/enums/app_enum.dart';
import '../utils/constants/router/main_router_constants.dart';
import '../utils/extensions/context_extension.dart';
import '../utils/extensions/theme_extension.dart';
import '../viewmodels/app/like/like_bloc.dart';

class NewsStatistic extends StatelessWidget {
  final int? count;
  final Statistic statistic;
  final Color? color;
  final double iconSize;
  final double fontSize;
  final bool clickable;
  final Axis axis;
  final FontWeight? fontWeight;
  final NewsModel news;

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
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    var liked = context.watch<LikeBloc>().state.data.contains(news.id);
    var likedIcon = (statistic == Statistic.like) && liked;
    var iconColor =
        likedIcon ? Colors.red : color ?? context.theme.customColors.third;

    return GestureDetector(
      onTap: () {
        if (clickable) {
          switch (statistic) {
            case Statistic.comment:
              MainRouterService.instance.pushNamed(
                path: MainRouterConstants.newsComments,
                data: news,
              );
              break;
            case Statistic.like:
              getIt<LikeBloc>().add(
                liked
                    ? Unlike(params: UnlikeUseCaseParams(id: news.id))
                    : Like(params: LikeUseCaseParams(id: news.id)),
              );
              break;
          }
        }
      },
      child: buildLayout(
        children: [
          ImageIcon(
            size: iconSize,
            color: iconColor,
            AssetImage(
              statistic == Statistic.comment
                  ? Assets.image.icComment.path
                  : Assets.image.icHeart.path,
            ),
          ),
          Visibility(
            visible: count != null,
            child: Text(
              likedIcon ? ((count ?? 0) + 1).toString() : count.toString(),
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
