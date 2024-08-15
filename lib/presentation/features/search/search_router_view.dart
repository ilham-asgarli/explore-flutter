import 'package:flutter/material.dart';

import '../../utils/config/router/search_router.dart';
import '../../utils/constants/app/custom_global_key_constants.dart';
import '../../utils/constants/router/search_router_constants.dart';
import '../../widgets/router_view.dart';

class SearchRouterView extends StatelessWidget {
  const SearchRouterView({super.key});

  @override
  Widget build(BuildContext context) {
    return RouterView(
      navigatorKey: CustomGlobalKeyConstants.searchViewNavigatorKey,
      initialRoute: SearchRouterConstants.search,
      onGenerateRoute: SearchRouter.instance.generateRoute,
    );
  }
}
