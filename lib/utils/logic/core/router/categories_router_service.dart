import 'package:explore/core/router/core/router_service.dart';

import '../../constants/app/custom_global_key_constants.dart';

class CategoriesRouterService extends RouterService {
  static final CategoriesRouterService instance =
      CategoriesRouterService._init();

  CategoriesRouterService()
      : super(
            navigatorKey: CustomGlobalKeyConstants.categoriesViewNavigatorKey);

  CategoriesRouterService._init()
      : super(
            navigatorKey: CustomGlobalKeyConstants.categoriesViewNavigatorKey);
}
