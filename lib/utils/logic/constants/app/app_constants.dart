import 'package:easy_localization/easy_localization.dart';
import 'package:explore/utils/logic/constants/locale/locale_keys.g.dart';

class AppConstants {
  static Map<String, String> homePopUpMenuItems = {
    "source": LocaleKeys.source.tr(),
    "news": LocaleKeys.news.tr(),
  };

  static Map<String, String> likesPopUpMenuItems = {
    "content": LocaleKeys.content.tr(),
    "comment": LocaleKeys.comment.tr(),
  };

  static Map<String, String> commentPopUpMenuItems = {
    "complain": LocaleKeys.complain.tr(),
  };
}
