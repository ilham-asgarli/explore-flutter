import 'package:flutter/material.dart';

import '../../utils/config/router/categories_router.dart';
import '../../utils/constants/app/custom_global_key_constants.dart';
import '../../utils/constants/router/categories_router_constants.dart';

class CategoriesRouterView extends StatelessWidget {
  const CategoriesRouterView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (CustomGlobalKeyConstants.categoriesViewNavigatorKey.currentState
                ?.canPop() ??
            false) {
          CustomGlobalKeyConstants.categoriesViewNavigatorKey.currentState
              ?.pop();
          return false;
        }
        return true;
      },
      child: Navigator(
        key: CustomGlobalKeyConstants.categoriesViewNavigatorKey,
        initialRoute: CategoriesRouterConstants.categories,
        onGenerateRoute: CategoriesRouter.instance.generateRoute,
      ),
    );
  }
}
