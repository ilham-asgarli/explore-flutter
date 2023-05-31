import 'package:explore/presentation/features/profile/features/my-account/views/my_account_view.dart';
import 'package:explore/presentation/features/profile/features/my-content-likes/views/my_content_likes_view.dart';
import 'package:explore/presentation/features/profile/features/my-likes/views/my_likes_view.dart';
import 'package:explore/presentation/features/profile/features/my-sources/views/my_sources_view.dart';
import 'package:explore/presentation/features/profile/features/notifications/views/notifications_view.dart';
import 'package:explore/presentation/features/profile/views/profile_view.dart';
import 'package:explore/utils/logic/config/router/interfaces/router_interface.dart';
import 'package:flutter/material.dart';

import '../../../../presentation/features/not-found-navigation/views/not_found_navigation_view.dart';
import '../../../../presentation/features/profile/features/my-comment-likes/views/my_comments_likes_view.dart';
import '../../../../presentation/features/profile/features/my-comments/views/my_comments_view.dart';
import '../../constants/router/profile_router_constants.dart';
import '../../constants/router/router_constants.dart';

class ProfileRouter extends RouterInterface {
  static final ProfileRouter instance = ProfileRouter._init();

  ProfileRouter._init();

  @override
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ProfileRouterConstants.profile:
        return normalNavigate(
          ProfileView(),
          ProfileRouterConstants.profile,
        );
      case ProfileRouterConstants.myComments:
        return normalNavigate(
          const MyCommentsView(),
          ProfileRouterConstants.myComments,
        );
      case ProfileRouterConstants.myAccount:
        return normalNavigate(
          MyAccountView(),
          ProfileRouterConstants.myAccount,
        );
      case ProfileRouterConstants.sources:
        return normalNavigate(
          const MySourcesView(),
          ProfileRouterConstants.sources,
        );
      case ProfileRouterConstants.notifications:
        return normalNavigate(
          const NotificationsView(),
          ProfileRouterConstants.notifications,
        );
      case ProfileRouterConstants.myLikes:
        return normalNavigate(
          const MyLikesView(),
          ProfileRouterConstants.myLikes,
        );
      case ProfileRouterConstants.myContentLikes:
        return normalNavigate(
          const MyContentLikesView(),
          ProfileRouterConstants.myContentLikes,
        );
      case ProfileRouterConstants.myCommentsLikes:
        return normalNavigate(
          const MyCommentsLikesView(),
          ProfileRouterConstants.myCommentsLikes,
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
