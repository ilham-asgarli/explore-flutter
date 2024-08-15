import '../../../constants/app/custom_global_key_constants.dart';
import 'router_service.dart';

class TrendsRouterService extends RouterService {
  static final TrendsRouterService instance = TrendsRouterService._init();

  TrendsRouterService()
      : super(navigatorKey: CustomGlobalKeyConstants.trendsViewNavigatorKey);

  TrendsRouterService._init()
      : super(navigatorKey: CustomGlobalKeyConstants.trendsViewNavigatorKey);
}
