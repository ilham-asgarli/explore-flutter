import 'package:flutter/material.dart';

import '../../utils/config/router/profile_router.dart';
import '../../utils/constants/app/custom_global_key_constants.dart';
import '../../utils/constants/router/profile_router_constants.dart';
import '../../widgets/router_view.dart';

class ProfileRouterView extends StatelessWidget {
  const ProfileRouterView({super.key});

  @override
  Widget build(BuildContext context) {
    return RouterView(
      navigatorKey: CustomGlobalKeyConstants.profileViewNavigatorKey,
      initialRoute: ProfileRouterConstants.profile,
      onGenerateRoute: ProfileRouter.instance.generateRoute,
    );
  }
}
