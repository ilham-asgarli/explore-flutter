import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/logic/state/bloc/theme/theme_bloc.dart';

class MyPopupMenuDividerTheme extends StatelessWidget {
  final Widget child;

  const MyPopupMenuDividerTheme({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: DividerThemeData(
          color: context.watch<ThemeBloc>().state.appColors.second,
          indent: 20,
          endIndent: 20,
        ),
      ),
      child: child,
    );
  }
}
