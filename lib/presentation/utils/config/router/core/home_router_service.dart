import '../../../constants/app/custom_global_key_constants.dart';
import 'router_service.dart';

class HomeRouterService extends RouterService {
  static final HomeRouterService instance = HomeRouterService._init();

  HomeRouterService()
      : super(navigatorKey: CustomGlobalKeyConstants.homeViewNavigatorKey);

  HomeRouterService._init()
      : super(navigatorKey: CustomGlobalKeyConstants.homeViewNavigatorKey);
}
