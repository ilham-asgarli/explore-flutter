import 'package:cached_network_image/cached_network_image.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../utils/logic/constants/router/main_router_constants.dart';
import '../../../../utils/logic/core/router/main_router_service.dart';
import '../../../components/news_statistic.dart';

class News1Item extends StatelessWidget {
  final double? width;
  final double? height;
  final double? fontSize;
  final bool newsSourceClickable;

  const News1Item({
    Key? key,
    required this.width,
    required this.height,
    this.fontSize,
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
        padding: context.paddingLow,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              "https://media.worldnomads.com/Explore/middle-east/hagia-sophia-church-istanbul-turkey-gettyimages-skaman306.jpg",
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.srcATop,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Türkiye'nin savunma sanayisinde yaptıkları ile adını duyuran Baykar, Bayraktar Dikey İniş Kalkışlı İnsansız Hava Aracı'nın 8 bin feet operasyonel irtifa uçuş testini başarıyla tamamladığını duyurdu.",
              style: TextStyle(
                fontFamily: 'Matter',
                color: Colors.white,
                fontSize: fontSize ?? 18,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSource(),
                buildNewsDetails(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSource() {
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
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildNewsDetails() {
    return Row(
      children: [
        NewsStatistic(
          statistic: Statistic.comment,
          color: Colors.white,
          iconSize: 40,
        ),
        NewsStatistic(
          statistic: Statistic.like,
          color: Colors.white,
          iconSize: 40,
        ),
      ],
    );
  }
}
