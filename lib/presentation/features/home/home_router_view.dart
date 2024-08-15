import 'package:flutter/material.dart';

import '../../utils/config/router/home_router.dart';
import '../../utils/constants/app/custom_global_key_constants.dart';
import '../../utils/constants/router/home_router_constants.dart';
import '../../widgets/router_view.dart';

class HomeRouterView extends StatelessWidget {
  const HomeRouterView({super.key});

  @override
  Widget build(BuildContext context) {
    return RouterView(
      navigatorKey: CustomGlobalKeyConstants.homeViewNavigatorKey,
      initialRoute: HomeRouterConstants.home,
      onGenerateRoute: HomeRouter.instance.generateRoute,
    );
  }
}
