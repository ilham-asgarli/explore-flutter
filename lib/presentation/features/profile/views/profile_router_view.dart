import 'package:explore/presentation/widgets/router_view.dart';
import 'package:flutter/material.dart';

import '../../../../utils/logic/config/router/profile_router.dart';
import '../../../../utils/logic/constants/app/custom_global_key_constants.dart';
import '../../../../utils/logic/constants/router/profile_router_constants.dart';

class ProfileRouterView extends StatelessWidget {
  const ProfileRouterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RouterView(
      navigatorKey: CustomGlobalKeyConstants.profileViewNavigatorKey,
      initialRoute: ProfileRouterConstants.profile,
      onGenerateRoute: ProfileRouter.instance.generateRoute,
    );
  }
}
