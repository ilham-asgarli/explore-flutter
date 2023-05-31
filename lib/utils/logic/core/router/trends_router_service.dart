import 'package:explore/core/router/core/router_service.dart';

import '../../constants/app/custom_global_key_constants.dart';

class TrendsRouterService extends RouterService {
  static final TrendsRouterService instance = TrendsRouterService._init();

  TrendsRouterService()
      : super(navigatorKey: CustomGlobalKeyConstants.trendsViewNavigatorKey);

  TrendsRouterService._init()
      : super(navigatorKey: CustomGlobalKeyConstants.trendsViewNavigatorKey);
}
