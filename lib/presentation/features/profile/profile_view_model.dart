import 'package:flutter/widgets.dart';

import '../../widgets/my_popup_menu_divider_theme.dart';
import 'components/profile-items/comments.dart';
import 'components/profile-items/likes.dart';
import 'components/profile-items/mod.dart';
import 'components/profile-items/my_account.dart';
import 'components/profile-items/notifications.dart';
import 'components/profile-items/sources.dart';

class ProfileViewModel {
  final List<Widget> profileItems = [
    Sources(),
    Comments(),
    MyPopupMenuDividerTheme(
      child: Likes(),
    ),
    MyAccount(),
    Notifications(),
    Mod(),
  ];
}
