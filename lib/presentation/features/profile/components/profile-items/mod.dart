import 'package:easy_localization/easy_localization.dart';
import 'package:explore/utils/logic/constants/locale/locale_keys.g.dart';
import 'package:explore/utils/logic/helpers/theme/theme_helper.dart';
import 'package:flutter/material.dart';

import '../profile_item.dart';

class Mod extends ProfileItem {
  Mod({super.key})
      : super(
          title: LocaleKeys.mod.tr(),
          icon: "ic_replace",
          onTap: (BuildContext context, Offset? offset) {
            ThemeHelper.instance.changeThemeModePreference(context);
          },
        );
}
