import 'package:flutter/material.dart';

import '../../utils/config/router/trends_router.dart';
import '../../utils/constants/app/custom_global_key_constants.dart';
import '../../utils/constants/router/trends_router_constants.dart';
import '../../widgets/router_view.dart';

class TrendsRouterView extends StatelessWidget {
  const TrendsRouterView({super.key});

  @override
  Widget build(BuildContext context) {
    return RouterView(
      navigatorKey: CustomGlobalKeyConstants.trendsViewNavigatorKey,
      initialRoute: TrendsRouterConstants.trends,
      onGenerateRoute: TrendsRouter.instance.generateRoute,
    );
  }
}
