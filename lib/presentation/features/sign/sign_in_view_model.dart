import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/di/injectable.dart';
import '../../utils/config/router/core/router_service.dart';
import '../../utils/constants/cache/shared_preferences_constants.dart';
import '../../utils/constants/router/router_constants.dart';

class SignInViewModel {
  Future<void> onSignedIn() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await getIt<SharedPreferences>()
        .setBool(SharedPreferencesConstants.isSignedIn, true);
    RouterService.instance.pushNamedAndRemoveUntil(
      path: RouterConstants.main,
    );
  }
}
