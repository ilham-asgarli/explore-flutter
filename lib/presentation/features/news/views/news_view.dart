import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/presentation/features/news/view-models/news_view_model.dart';
import 'package:explore/utils/ui/constants/colors/app_colors_light.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../utils/logic/core/router/main_router_service.dart';
import '../../../components/news_statistic.dart';

class NewsView extends StatelessWidget {
  NewsView({Key? key}) : super(key: key);

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
      color: AppColorsLight.instance.main,
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
          color: AppColorsLight.instance.fourth,
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
            "ic_link_circle".toPNG,
            width: 20,
            height: 20,
          ),
        ),
        IconButton(
          onPressed: () {
            MainRouterService.instance.pop();
          },
          icon: Image.asset("ic_back_rounded_rectangle".toPNG),
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
        context.widget.horizontalSpace(10),
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
