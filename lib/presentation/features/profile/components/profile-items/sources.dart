import 'package:flutter/material.dart';

import '../../../../../utils/di/injectable.dart';
import '../../../../../utils/gen/assets.gen.dart';
import '../../../../utils/config/router/core/profile_router_service.dart';
import '../../../../utils/constants/router/profile_router_constants.dart';
import '../../../../utils/l10n/gen/app_localizations.dart';
import '../profile_item.dart';

class Sources extends ProfileItem {
  Sources({super.key})
      : super(
          title: getIt<AppLocalizations>().sources,
          icon: Assets.image.icAddCircle.path,
          onTap: (BuildContext context, Offset? offset) {
            ProfileRouterService.instance.pushNamed(
              path: ProfileRouterConstants.sources,
            );
          },
        );
}
