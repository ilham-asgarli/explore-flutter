import 'package:flutter/material.dart';

import '../../../../utils/logic/config/router/categories_router.dart';
import '../../../../utils/logic/constants/app/custom_global_key_constants.dart';
import '../../../../utils/logic/constants/router/categories_router_constants.dart';

class CategoriesRouterView extends StatelessWidget {
  const CategoriesRouterView({Key? key}) : super(key: key);

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
