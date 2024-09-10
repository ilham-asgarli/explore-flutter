import 'package:flutter/widgets.dart';

import 'components/profile-items/mod.dart';
import 'components/profile-items/sources.dart';

class ProfileViewModel {
  final List<Widget> profileItems = [
    Sources(),
    //Comments(),
    /*MyPopupMenuDividerTheme(
      child: Likes(),
    ),*/
    //MyAccount(),
    //Notifications(),
    Mod(),
  ];
}
