import 'package:explore/utils/logic/config/router/trends_router.dart';
import 'package:explore/utils/logic/constants/router/trends_router_constants.dart';
import 'package:flutter/material.dart';

import '../../../../utils/logic/constants/app/custom_global_key_constants.dart';
import '../../../widgets/router_view.dart';

class TrendsRouterView extends StatelessWidget {
  const TrendsRouterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RouterView(
      navigatorKey: CustomGlobalKeyConstants.trendsViewNavigatorKey,
      initialRoute: TrendsRouterConstants.trends,
      onGenerateRoute: TrendsRouter.instance.generateRoute,
    );
  }
}
