import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/cache/shared_preferences_constants.dart';
import '../../../utils/constants/router/router_constants.dart';
import '../../../utils/helpers/theme/theme_helper.dart';

part 'my_app_view_state.dart';

@lazySingleton
class MyAppViewCubit extends Cubit<MyAppViewState> {
  final ThemeHelper themeHelper = getIt();

  MyAppViewCubit() : super(const MyAppViewState());

  void injectContext(BuildContext context) {
    try {
      getIt.registerLazySingleton(() => context);
    } catch (_) {}
  }

  String getInitialRoute() {
    if (getIt<SharedPreferences>()
            .getInt(SharedPreferencesConstants.chosenCountryId) ==
        null) {
      return RouterConstants.chooseCountry;
    }

    /*if (!(getIt<SharedPreferences>()
            .getBool(SharedPreferencesConstants.isSignedIn) ??
        false)) {
      return RouterConstants.signIn;
    }*/

    return RouterConstants.main;
  }
}
