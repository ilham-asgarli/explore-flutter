import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/config/router/core/main_router_service.dart';
import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/constants/router/main_router_constants.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/num_extension.dart';
import '../../../utils/extensions/theme_extension.dart';
import '../../../widgets/news_statistic.dart';

class News2Item extends StatelessWidget {
  final bool newsSourceClickable;

  const News2Item({
    super.key,
    this.newsSourceClickable = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      onTap: () {
        MainRouterService.instance.pushNamed(
          path: MainRouterConstants.news,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: context.theme.customColors.fourth,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            buildNewsImage(context),
            Padding(
              padding: context.paddingLow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: context.paddingLowVertical,
                    child: buildNewsSource(),
                  ),
                  buildNewsDescription(),
                  10.verticalSpace,
                  buildNewsDetails(context),
                ],
              ),
            ),
          ],
        ),
      ),
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
        "Haber",
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF707070),
          ),
        ),
      ),
    );
  }

  Widget buildNewsImage(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.dynamicWidth(0.3),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            "https://media.worldnomads.com/Explore/middle-east/hagia-sophia-church-istanbul-turkey-gettyimages-skaman306.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildNewsDescription() {
    return const Text(
      "Başakşehir'e gitmesi beklenen Seferovic'ten büyük sürpriz! Yeni adresi herkesi ters köşe yapacak",
      style: TextStyle(
        fontFamily: 'Matter',
        fontWeight: FontWeight.w600,
        fontSize: 17,
        overflow: TextOverflow.ellipsis,
      ),
      maxLines: 6,
    );
  }

  Widget buildNewsDetails(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        NewsStatistic(
          statistic: Statistic.comment,
          count: 87,
        ),
        10.horizontalSpace,
        NewsStatistic(
          statistic: Statistic.like,
          count: 874,
        ),
      ],
    );
  }
}
