import 'package:flutter/material.dart';

import '../../../../data/models/news/news.model.dart';
import '../../../../presentation/features/not-found-navigation/views/not_found_navigation_view.dart';
import '../../../features/add-source/add_source_view.dart';
import '../../../features/add-source/features/show-all/show_all_view.dart';
import '../../../features/main/main_view.dart';
import '../../../features/news-comments/news_comments_view.dart';
import '../../../features/news-source/news_source_view.dart';
import '../../../features/news/news_view.dart';
import '../../../viewmodels/ephemeral/news-comments/news_comments_view_model.dart';
import '../../../viewmodels/ephemeral/news/news_view_model.dart';
import '../../constants/router/main_router_constants.dart';
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
          NewsView(
            viewModel: NewsViewModel(news: settings.arguments as NewsModel),
          ),
          MainRouterConstants.news,
        );
      case MainRouterConstants.newsComments:
        return normalNavigate(
          NewsCommentsView(
            viewModel:
                NewsCommentsViewModel(news: settings.arguments as NewsModel),
          ),
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
