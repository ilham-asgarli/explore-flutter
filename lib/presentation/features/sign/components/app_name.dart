import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../utils/logic/constants/locale/locale_keys.g.dart';

class AppName extends StatelessWidget {
  const AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.appName.tr().toLowerCase(),
      style: const TextStyle(fontSize: 53),
      textAlign: TextAlign.center,
    );
  }
}
