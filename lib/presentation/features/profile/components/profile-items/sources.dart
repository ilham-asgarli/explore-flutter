import 'package:easy_localization/easy_localization.dart';
import 'package:explore/utils/logic/constants/locale/locale_keys.g.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/logic/constants/router/profile_router_constants.dart';
import '../../../../../utils/logic/core/router/profile_router_service.dart';
import '../profile_item.dart';

class Sources extends ProfileItem {
  Sources({super.key})
      : super(
          title: LocaleKeys.sources.tr(),
          icon: "ic_add_circle",
          onTap: (BuildContext context, Offset? offset) {
            ProfileRouterService.instance.pushNamed(
              path: ProfileRouterConstants.sources,
            );
          },
        );
}
