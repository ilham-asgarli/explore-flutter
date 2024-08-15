import 'package:flutter/material.dart';

import '../../../../presentation/features/not-found-navigation/views/not_found_navigation_view.dart';
import '../../../features/search/search_view.dart';
import '../../constants/router/router_constants.dart';
import '../../constants/router/search_router_constants.dart';
import 'interfaces/router_interface.dart';

class SearchRouter extends RouterInterface {
  static final SearchRouter instance = SearchRouter._init();

  SearchRouter._init();

  @override
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SearchRouterConstants.search:
        return normalNavigate(
          SearchView(),
          SearchRouterConstants.search,
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
