import 'package:flutter/material.dart';

import '../../../../../utils/di/injectable.dart';
import '../../../../../utils/gen/assets.gen.dart';
import '../../../../utils/l10n/gen/app_localizations.dart';
import '../../../my-app/state/cubit/theme/theme_cubit.dart';
import '../profile_item.dart';

class Mod extends ProfileItem {
  Mod({super.key})
      : super(
          title: getIt<AppLocalizations>().mod,
          icon: Assets.image.icReplace.path,
          onTap: (BuildContext context, Offset? offset) {
            var mode = switch (getIt<ThemeCubit>().state.themeMode) {
              ThemeMode.system => ThemeMode.light,
              ThemeMode.light => ThemeMode.dark,
              ThemeMode.dark => ThemeMode.system,
            };

            getIt<ThemeCubit>().changeThemeMode(mode);
          },
        );
}
