import 'package:explore/core/base/view-models/base_view_model.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/cache/shared_preferences_manager.dart';
import '../../../../core/router/core/router_service.dart';
import '../../../../utils/logic/constants/cache/shared_preferences_constants.dart';
import '../../../../utils/logic/constants/router/router_constants.dart';

class SignInViewModel extends BaseViewModel {
  Future<void> onSignedIn() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await SharedPreferencesManager.instance.preferences
        ?.setBool(SharedPreferencesConstants.isSignedIn, true);
    RouterService.instance.pushNamedAndRemoveUntil(
      path: RouterConstants.main,
    );
  }
}
