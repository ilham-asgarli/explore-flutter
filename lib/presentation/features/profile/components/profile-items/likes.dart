import 'package:flutter/material.dart';

import '../../../../../utils/di/injectable.dart';
import '../../../../../utils/gen/assets.gen.dart';
import '../../../../utils/config/router/core/profile_router_service.dart';
import '../../../../utils/constants/app/app_constants.dart';
import '../../../../utils/constants/router/profile_router_constants.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../../../utils/l10n/gen/app_localizations.dart';
import '../../../../widgets/my_popup_menu_button_item.dart';
import '../profile_item.dart';

class Likes extends ProfileItem {
  Likes({super.key})
      : super(
          title: getIt<AppLocalizations>().likes,
          icon: Assets.image.icProfileHeart.path,
          onTap: (BuildContext context, Offset? offset) async {
            ProfileRouterService.instance.pushNamed(
              path: ProfileRouterConstants.myLikes,
            );
          },
        );

  Future<void> onSelectableTap(
    BuildContext context,
    Offset? offset,
  ) async {
    final Map<String, String> popupMenuItems = AppConstants.likesPopUpMenuItems;

    double dx = offset?.dx ?? 0;
    double dy = offset?.dy ?? 0;

    String? selected = await showMenu<String>(
      context: context,
      color: const Color(0xFF262222),
      position: RelativeRect.fromLTRB(
        context.width - (context.width - dx) * 2,
        dy,
        context.width - (context.width - dx) * 2,
        dy,
      ),
      items: List<PopupMenuEntry<String>>.generate(
        popupMenuItems.length * 2 - 1,
        (i) => (i % 2 == 0
            ? MyPopupMenuButtonItem(
                entry: popupMenuItems.entries.elementAt(i ~/ 2),
              )
            : const PopupMenuDivider(
                height: 0,
              )) as PopupMenuEntry<String>,
      ),
    );

    if (selected == AppConstants.likesPopUpMenuItems.keys.elementAt(0)) {
      ProfileRouterService.instance.pushNamed(
        path: ProfileRouterConstants.myContentLikes,
      );
    } else if (selected == AppConstants.likesPopUpMenuItems.keys.elementAt(1)) {
      ProfileRouterService.instance.pushNamed(
        path: ProfileRouterConstants.myCommentsLikes,
      );
    }
  }
}
