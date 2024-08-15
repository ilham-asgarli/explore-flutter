import 'state/main-tab/main_tab_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/gen/assets.gen.dart';
import '../../utils/config/router/main_router.dart';
import '../../utils/constants/app/custom_global_key_constants.dart';
import '../../utils/constants/router/main_router_constants.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/num_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../widgets/router_view.dart';

class MainRouterView extends StatelessWidget {
  const MainRouterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(context),
      body: RouterView(
        onWillPop: () async {
          if (defaultOnWillPop(CustomGlobalKeyConstants.mainNavigatorKey)) {
            return defaultOnWillPop(context
                .read<MainTabCubit>()
                .items
                .keys
                .elementAt(context.read<MainTabCubit>().state.index));
          }

          return false;
        },
        navigatorKey: CustomGlobalKeyConstants.mainNavigatorKey,
        initialRoute: MainRouterConstants.main,
        onGenerateRoute: MainRouter.instance.generateRoute,
      ),
    );
  }

  bool defaultOnWillPop(GlobalKey<NavigatorState> navigatorKey) {
    if (navigatorKey.currentState?.canPop() ?? false) {
      navigatorKey.currentState?.pop();
      return false;
    }

    return true;
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.watch<MainTabCubit>().state.index,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: context.theme.customColors.primary,
      elevation: 0,
      showSelectedLabels: false,
      selectedFontSize: 12,
      items: context
          .read<MainTabCubit>()
          .items
          .values
          .toList()
          .asMap()
          .map(
            (key, value) {
              return MapEntry(
                key,
                BottomNavigationBarItem(
                  label: "",
                  icon: Column(
                    children: [
                      Image.asset(
                        icon(key),
                        width: 20,
                        height: 20,
                      ),
                      5.verticalSpace,
                      Visibility(
                        visible:
                            key == context.watch<MainTabCubit>().state.index,
                        child: const Icon(Icons.circle, size: 5),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
          .values
          .toList(),
      onTap: (index) {
        BlocProvider.of<MainTabCubit>(context).changeTab(index);
      },
    );
  }

  String icon(int index) {
    switch (index) {
      case 0:
        return Assets.image.icHome.path;
      case 1:
        return Assets.image.icSearch.path;
      case 2:
        return Assets.image.icFire.path;
      case 3:
        return Assets.image.icCategory.path;
      case 4:
        return Assets.image.icProfileWhite.path;
      default:
        return "";
    }
  }
}
