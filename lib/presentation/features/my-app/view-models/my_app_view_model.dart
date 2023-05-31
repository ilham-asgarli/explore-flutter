import 'package:explore/core/cache/shared_preferences_manager.dart';
import 'package:explore/utils/logic/constants/cache/shared_preferences_constants.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../../../core/base/view-models/base_view_model.dart';
import '../../../../utils/logic/constants/router/router_constants.dart';

class MyAppViewModel extends BaseViewModel {
  void removeSplashScreen() {
    FlutterNativeSplash.remove();
  }

  String getInitialRoute() {
    if (SharedPreferencesManager.instance.preferences
            ?.getInt(SharedPreferencesConstants.chosenCountryId) ==
        null) {
      return RouterConstants.chooseCountry;
    }

    if (!(SharedPreferencesManager.instance.preferences
            ?.getBool(SharedPreferencesConstants.isSignedIn) ??
        false)) {
      return RouterConstants.signIn;
    }

    return RouterConstants.main;
  }
}
