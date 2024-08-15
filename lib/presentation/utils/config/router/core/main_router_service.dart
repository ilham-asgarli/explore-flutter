import '../../../constants/app/custom_global_key_constants.dart';
import 'router_service.dart';

class MainRouterService extends RouterService {
  static final MainRouterService instance = MainRouterService._init();

  MainRouterService()
      : super(navigatorKey: CustomGlobalKeyConstants.mainNavigatorKey);

  MainRouterService._init()
      : super(navigatorKey: CustomGlobalKeyConstants.mainNavigatorKey);
}
