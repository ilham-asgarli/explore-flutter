import 'package:flutter/material.dart';

import '../../../../presentation/features/not-found-navigation/views/not_found_navigation_view.dart';
import '../../../features/choose-country/choose_country_view.dart';
import '../../../features/main/main_router_view.dart';
import '../../../features/profile/profile_router_view.dart';
import '../../../features/sign/forgot_password_view.dart';
import '../../../features/sign/reset_password_view.dart';
import '../../../features/sign/sign_in_view.dart';
import '../../../features/sign/sign_up_view.dart';
import '../../constants/router/profile_router_constants.dart';
import '../../constants/router/router_constants.dart';
import 'interfaces/router_interface.dart';

class ConfigRouter extends RouterInterface {
  static final ConfigRouter instance = ConfigRouter._init();

  ConfigRouter._init();

  @override
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConstants.main:
        return normalNavigate(
          const MainRouterView(),
          RouterConstants.main,
        );
      case RouterConstants.chooseCountry:
        return normalNavigate(
          ChooseCountryView(),
          RouterConstants.chooseCountry,
        );
      case RouterConstants.signUp:
        return normalNavigate(
          const SignUpView(),
          RouterConstants.signUp,
        );
      case RouterConstants.signIn:
        return normalNavigate(
          SignInView(),
          RouterConstants.signIn,
        );
      case RouterConstants.forgotPassword:
        return normalNavigate(
          const ForgotPasswordView(),
          RouterConstants.forgotPassword,
        );
      case RouterConstants.resetPassword:
        return normalNavigate(
          const ResetPasswordView(),
          RouterConstants.resetPassword,
        );
      case ProfileRouterConstants.profile:
        return normalNavigate(
          const ProfileRouterView(),
          ProfileRouterConstants.profile,
        );
      default:
        //throw NavigateException<SettingsDynamicModel>(args.arguments);
        return normalNavigate(
          const NotFoundNavigationView(),
          RouterConstants.notFound,
        );
    }
  }
}
