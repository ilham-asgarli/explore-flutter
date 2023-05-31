import 'package:easy_localization/easy_localization.dart';
import 'package:explore/utils/logic/constants/locale/locale_keys.g.dart';
import 'package:explore/utils/logic/constants/router/profile_router_constants.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/logic/core/router/profile_router_service.dart';
import '../profile_item.dart';

class Comments extends ProfileItem {
  Comments({super.key})
      : super(
          title: LocaleKeys.comments.tr(),
          icon: "ic_profile_comment",
          onTap: (BuildContext context, Offset? offset) {
            ProfileRouterService.instance.pushNamed(
              path: ProfileRouterConstants.myComments,
            );
          },
        );
}
