import 'package:explore/presentation/features/categories/features/category-news/views/category_news_view.dart';
import 'package:flutter/material.dart';

import '../../../../presentation/features/categories/views/categories_view.dart';
import '../../../../presentation/features/not-found-navigation/views/not_found_navigation_view.dart';
import '../../constants/router/categories_router_constants.dart';
import '../../constants/router/router_constants.dart';
import 'interfaces/router_interface.dart';

class CategoriesRouter extends RouterInterface {
  static final CategoriesRouter instance = CategoriesRouter._init();

  CategoriesRouter._init();

  @override
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CategoriesRouterConstants.categories:
        return normalNavigate(
          const CategoriesView(),
          CategoriesRouterConstants.categories,
        );
      case CategoriesRouterConstants.categoryNews:
        return normalNavigate(
          const CategoryNewsView(),
          CategoriesRouterConstants.categoryNews,
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
