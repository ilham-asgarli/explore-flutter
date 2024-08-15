import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../utils/gen/assets.gen.dart';
import '../../utils/config/router/core/main_router_service.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/num_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../utils/extensions/widget_extension.dart';
import '../../widgets/news_statistic.dart';
import 'news_view_model.dart';

class NewsView extends StatelessWidget {
  NewsView({super.key});

  final NewsViewModel newsViewModel = NewsViewModel();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          buildHeader(context).toSliver,
          SliverFillRemaining(
            child: WebViewWidget(
              controller: newsViewModel.controller,
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{}
                ..add(
                  Factory<OneSequenceGestureRecognizer>(
                    () => EagerGestureRecognizer(),
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: context.paddingNormal,
      color: context.theme.customColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildSource(context),
          buildActions(context),
        ],
      ),
    );
  }

  Widget buildSource(BuildContext context) {
    return Text(
      "Haberler.com",
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: context.theme.customColors.fourth,
          fontSize: 15,
        ),
      ),
    );
  }

  Widget buildActions(BuildContext context) {
    return Row(
      children: [
        buildNewsDetails(context),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            Assets.image.icLinkCircle.path,
            width: 20,
            height: 20,
          ),
        ),
        IconButton(
          onPressed: () {
            MainRouterService.instance.pop();
          },
          icon: Image.asset(Assets.image.icBackRoundedRectangle.path),
        ),
      ],
    );
  }

  Widget buildNewsDetails(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        NewsStatistic(
          statistic: Statistic.comment,
          count: 87,
          color: Colors.white,
          iconSize: 35,
        ),
        10.horizontalSpace,
        NewsStatistic(
          statistic: Statistic.like,
          count: 874,
          color: Colors.white,
          iconSize: 35,
        ),
      ],
    );
  }
}
