import 'package:explore/core/router/core/router_service.dart';

import '../../constants/app/custom_global_key_constants.dart';

class MainRouterService extends RouterService {
  static final MainRouterService instance = MainRouterService._init();

  MainRouterService()
      : super(navigatorKey: CustomGlobalKeyConstants.mainNavigatorKey);

  MainRouterService._init()
      : super(navigatorKey: CustomGlobalKeyConstants.mainNavigatorKey);
}
