import 'package:flutter/material.dart';

import '../utils/extensions/context_extension.dart';
import '../utils/extensions/theme_extension.dart';

class MyPopupMenuDividerTheme extends StatelessWidget {
  final Widget child;

  const MyPopupMenuDividerTheme({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: DividerThemeData(
          color: context.theme.customColors.second,
          indent: 20,
          endIndent: 20,
        ),
      ),
      child: child,
    );
  }
}
