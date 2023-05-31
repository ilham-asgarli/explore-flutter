import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/logic/state/bloc/theme/theme_bloc.dart';

class MyShimmerFromColor extends StatelessWidget {
  final Widget child;

  const MyShimmerFromColor({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.watch<ThemeBloc>().state.appColors.shimmerBase,
      highlightColor:
          context.watch<ThemeBloc>().state.appColors.shimmerHighLight,
      enabled: true,
      child: child,
    );
  }
}
