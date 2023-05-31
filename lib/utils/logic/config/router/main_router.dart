import 'package:explore/presentation/features/add-source/features/show-all/views/show_all_view.dart';
import 'package:explore/presentation/features/main/views/main_view.dart';
import 'package:explore/presentation/features/news/views/news_view.dart';
import 'package:explore/utils/logic/constants/router/main_router_constants.dart';
import 'package:flutter/material.dart';

import '../../../../presentation/features/add-source/views/add_source_view.dart';
import '../../../../presentation/features/news-comments/views/news_comments_view.dart';
import '../../../../presentation/features/news-source/views/news_source_view.dart';
import '../../../../presentation/features/not-found-navigation/views/not_found_navigation_view.dart';
import '../../constants/router/router_constants.dart';
import 'interfaces/router_interface.dart';

class MainRouter extends RouterInterface {
  static final MainRouter instance = MainRouter._init();

  MainRouter._init();

  @override
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainRouterConstants.main:
        return normalNavigate(
          const MainView(),
          MainRouterConstants.main,
        );
      case MainRouterConstants.addSource:
        return normalNavigate(
          const AddSourceView(),
          MainRouterConstants.addSource,
        );
      case MainRouterConstants.showAll:
        return normalNavigate(
          const ShowAllView(),
          MainRouterConstants.showAll,
        );
      case MainRouterConstants.newsSource:
        return normalNavigate(
          const NewsSourceView(),
          MainRouterConstants.newsSource,
        );
      case MainRouterConstants.news:
        return normalNavigate(
          NewsView(),
          MainRouterConstants.news,
        );
      case MainRouterConstants.newsComments:
        return normalNavigate(
          const NewsCommentsView(),
          MainRouterConstants.newsComments,
        );
      default:
        //throw NavigateException<SettingsDynamicModel>(args.arguments);
        return normalNavigate(
          const NotFoundNavigationView(),
          RouterConstants.notFound,
        );
    }
  }
}
