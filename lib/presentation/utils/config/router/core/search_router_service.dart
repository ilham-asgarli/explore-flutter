import '../../../constants/app/custom_global_key_constants.dart';
import 'router_service.dart';

class SearchRouterService extends RouterService {
  static final SearchRouterService instance = SearchRouterService._init();

  SearchRouterService()
      : super(navigatorKey: CustomGlobalKeyConstants.searchViewNavigatorKey);

  SearchRouterService._init()
      : super(navigatorKey: CustomGlobalKeyConstants.searchViewNavigatorKey);
}
