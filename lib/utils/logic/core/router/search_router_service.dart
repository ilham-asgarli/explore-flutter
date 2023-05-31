import 'package:explore/core/router/core/router_service.dart';

import '../../constants/app/custom_global_key_constants.dart';

class SearchRouterService extends RouterService {
  static final SearchRouterService instance = SearchRouterService._init();

  SearchRouterService()
      : super(navigatorKey: CustomGlobalKeyConstants.searchViewNavigatorKey);

  SearchRouterService._init()
      : super(navigatorKey: CustomGlobalKeyConstants.searchViewNavigatorKey);
}
