import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/utils/logic/state/cubit/main-tab/main_tab_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/logic/config/router/main_router.dart';
import '../../../../utils/logic/constants/app/custom_global_key_constants.dart';
import '../../../../utils/logic/constants/router/main_router_constants.dart';
import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../widgets/router_view.dart';

class MainRouterView extends StatelessWidget {
  const MainRouterView({Key? key}) : super(key: key);

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
      backgroundColor: context.watch<ThemeBloc>().state.appColors.main,
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
                      context.widget.verticalSpace(5),
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
        return "ic_home".toPNG;
      case 1:
        return "ic_search".toPNG;
      case 2:
        return "ic_fire".toPNG;
      case 3:
        return "ic_category".toPNG;
      case 4:
        return "ic_profile_white".toPNG;
      default:
        return "";
    }
  }
}
