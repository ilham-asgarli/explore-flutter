import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../../presentation/features/categories/views/categories_router_view.dart';
import '../../../../../presentation/features/home/views/home_router_view.dart';
import '../../../../../presentation/features/profile/views/profile_router_view.dart';
import '../../../../../presentation/features/search/views/search_router_view.dart';
import '../../../../../presentation/features/trends/views/trends_router_view.dart';
import '../../../constants/app/custom_global_key_constants.dart';
import '../../../core/router/main_router_service.dart';

part 'main_tab_state.dart';

class MainTabCubit extends Cubit<MainTabState> {
  final Map<GlobalKey<NavigatorState>, Widget> items = {
    CustomGlobalKeyConstants.homeViewNavigatorKey: const HomeRouterView(),
    CustomGlobalKeyConstants.searchViewNavigatorKey: const SearchRouterView(),
    CustomGlobalKeyConstants.trendsViewNavigatorKey: const TrendsRouterView(),
    CustomGlobalKeyConstants.categoriesViewNavigatorKey:
        const CategoriesRouterView(),
    CustomGlobalKeyConstants.profileViewNavigatorKey: const ProfileRouterView(),
  };

  MainTabCubit() : super(const MainTabState(0));

  void changeTab(int index) {
    resetAll(index);
    emit(MainTabState(index));
  }

  void resetAll(int index) {
    reset(MainRouterService.instance.navigatorKey?.currentState);
    for (var value in items.keys) {
      NavigatorState? navigatorState = value.currentState;
      reset(navigatorState);
    }
  }

  void reset(NavigatorState? navigatorState) {
    while (navigatorState?.canPop() ?? false) {
      navigatorState?.pop();
    }
  }
}
