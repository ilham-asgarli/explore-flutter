import 'package:flutter/material.dart';

import '../../../../presentation/features/not-found-navigation/views/not_found_navigation_view.dart';
import '../../../features/trends/trends_view.dart';
import '../../../viewmodels/ephemeral/trends/trends_view_model.dart';
import '../../constants/router/router_constants.dart';
import '../../constants/router/trends_router_constants.dart';
import 'interfaces/router_interface.dart';

class TrendsRouter extends RouterInterface {
  static final TrendsRouter instance = TrendsRouter._init();

  TrendsRouter._init();

  @override
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case TrendsRouterConstants.trends:
        return normalNavigate(
          TrendsView(
            viewModel: TrendsViewModel(),
          ),
          TrendsRouterConstants.trends,
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
