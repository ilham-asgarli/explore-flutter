import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../data/models/news/news.model.dart';
import '../../../utils/config/router/core/main_router_service.dart';
import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/constants/router/main_router_constants.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/num_extension.dart';
import '../../../utils/extensions/theme_extension.dart';
import '../../../widgets/news_statistic.dart';

class News extends StatelessWidget {
  final bool newsSourceClickable;
  final NewsModel news;

  const News({
    super.key,
    this.newsSourceClickable = true,
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicWidth(0.3),
      decoration: BoxDecoration(
        color: context.theme.customColors.fourth,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: context.paddingLow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: buildNewsDescription(context),
                    ),
                  ),
                  buildFooter(context),
                ],
              ),
            ),
          ),
          buildNewsImage(context),
        ],
      ),
    );
  }

  Widget buildNewsImage(BuildContext context) {
    return Container(
      width: context.dynamicWidth(0.3),
      height: context.dynamicWidth(0.3),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.horizontal(
          right: Radius.circular(10),
        ),
        image: DecorationImage(
          image: CachedNetworkImageProvider(news.thumbnail),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildNewsDescription(BuildContext context) {
    return Text(
      news.title,
      style: const TextStyle(
        fontFamily: 'Matter',
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
      ),
      maxLines: 3,
    );
  }

  Widget buildNewsSource() {
    return GestureDetector(
      onTap: () {
        if (newsSourceClickable) {
          MainRouterService.instance.pushNamed(
            path: MainRouterConstants.newsSource,
          );
        }
      },
      child: Text(
        news.channel.name,
        style: GoogleFonts.poppins(),
      ),
    );
  }

  Widget buildNewsDetails(BuildContext context) {
    return Row(
      children: [
        NewsStatistic(
          statistic: Statistic.comment,
          count: news.comment,
          clickable: false,
          news: news,
        ),
        10.horizontalSpace,
        NewsStatistic(
          statistic: Statistic.like,
          count: news.like,
          news: news,
        ),
      ],
    );
  }

  Widget buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildNewsSource(),
        buildNewsDetails(context),
      ],
    );
  }
}
