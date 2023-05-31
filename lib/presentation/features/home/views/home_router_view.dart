import 'package:explore/utils/logic/config/router/home_router.dart';
import 'package:explore/utils/logic/constants/router/home_router_constants.dart';
import 'package:flutter/material.dart';

import '../../../../utils/logic/constants/app/custom_global_key_constants.dart';
import '../../../widgets/router_view.dart';

class HomeRouterView extends StatelessWidget {
  const HomeRouterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RouterView(
      navigatorKey: CustomGlobalKeyConstants.homeViewNavigatorKey,
      initialRoute: HomeRouterConstants.home,
      onGenerateRoute: HomeRouter.instance.generateRoute,
    );
  }
}
