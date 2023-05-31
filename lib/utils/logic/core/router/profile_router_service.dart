import 'package:explore/core/router/core/router_service.dart';

import '../../constants/app/custom_global_key_constants.dart';

class ProfileRouterService extends RouterService {
  static final ProfileRouterService instance = ProfileRouterService._init();

  ProfileRouterService()
      : super(navigatorKey: CustomGlobalKeyConstants.profileViewNavigatorKey);

  ProfileRouterService._init()
      : super(navigatorKey: CustomGlobalKeyConstants.profileViewNavigatorKey);
}
