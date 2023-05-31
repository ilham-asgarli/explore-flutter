import 'package:explore/presentation/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../../../presentation/features/not-found-navigation/views/not_found_navigation_view.dart';
import '../../constants/router/home_router_constants.dart';
import '../../constants/router/router_constants.dart';
import 'interfaces/router_interface.dart';

class HomeRouter extends RouterInterface {
  static final HomeRouter instance = HomeRouter._init();

  HomeRouter._init();

  @override
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeRouterConstants.home:
        return normalNavigate(
          const HomeView(),
          RouterConstants.home,
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
