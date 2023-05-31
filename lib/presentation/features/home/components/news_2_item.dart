import 'package:cached_network_image/cached_network_image.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/utils/logic/constants/enums/app_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../utils/logic/constants/router/main_router_constants.dart';
import '../../../../utils/logic/core/router/main_router_service.dart';
import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../components/news_statistic.dart';

class News2Item extends StatelessWidget {
  final bool newsSourceClickable;

  const News2Item({
    Key? key,
    this.newsSourceClickable = true,
  }) : super(key: key);

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
          color: context.watch<ThemeBloc>().state.appColors.fourth,
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
                  context.widget.verticalSpace(10),
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
          textStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: HexColor("#707070"),
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
        context.widget.horizontalSpace(10),
        NewsStatistic(
          statistic: Statistic.like,
          count: 874,
        ),
      ],
    );
  }
}
