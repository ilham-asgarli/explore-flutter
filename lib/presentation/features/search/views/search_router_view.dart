import 'package:explore/utils/logic/constants/router/search_router_constants.dart';
import 'package:flutter/material.dart';

import '../../../../utils/logic/config/router/search_router.dart';
import '../../../../utils/logic/constants/app/custom_global_key_constants.dart';
import '../../../widgets/router_view.dart';

class SearchRouterView extends StatelessWidget {
  const SearchRouterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RouterView(
      navigatorKey: CustomGlobalKeyConstants.searchViewNavigatorKey,
      initialRoute: SearchRouterConstants.search,
      onGenerateRoute: SearchRouter.instance.generateRoute,
    );
  }
}
