import 'package:explore/core/router/core/router_service.dart';

import '../../constants/app/custom_global_key_constants.dart';

class HomeRouterService extends RouterService {
  static final HomeRouterService instance = HomeRouterService._init();

  HomeRouterService()
      : super(navigatorKey: CustomGlobalKeyConstants.homeViewNavigatorKey);

  HomeRouterService._init()
      : super(navigatorKey: CustomGlobalKeyConstants.homeViewNavigatorKey);
}
