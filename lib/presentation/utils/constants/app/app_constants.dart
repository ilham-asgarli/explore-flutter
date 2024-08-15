import 'package:flutter/material.dart';

import '../../../../utils/di/injectable.dart';
import '../../l10n/gen/app_localizations.dart';

abstract class AppConstants {
  static GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Map<String, String> homePopUpMenuItems = {
    "source": getIt<AppLocalizations>().source,
    "news": getIt<AppLocalizations>().news,
  };

  static Map<String, String> likesPopUpMenuItems = {
    "content": getIt<AppLocalizations>().content,
    "comment": getIt<AppLocalizations>().comment,
  };

  static Map<String, String> commentPopUpMenuItems = {
    "complain": getIt<AppLocalizations>().complain,
  };
}
