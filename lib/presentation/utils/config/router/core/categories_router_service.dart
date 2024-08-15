import '../../../constants/app/custom_global_key_constants.dart';
import 'router_service.dart';

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
