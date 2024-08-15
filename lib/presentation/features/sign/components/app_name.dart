import 'package:flutter/material.dart';

import '../../../utils/extensions/context_extension.dart';

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.l10n.appName.toLowerCase(),
      style: const TextStyle(fontSize: 53),
      textAlign: TextAlign.center,
    );
  }
}
