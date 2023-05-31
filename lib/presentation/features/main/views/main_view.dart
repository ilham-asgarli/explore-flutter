import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/logic/state/cubit/main-tab/main_tab_cubit.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IndexedStack(
        index: context.watch<MainTabCubit>().state.index,
        children: context.read<MainTabCubit>().items.values.toList(),
      ),
    );
  }
}
