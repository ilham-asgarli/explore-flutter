import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/appbar/my_sliver_app_bar.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/widget_extension.dart';
import '../../viewmodels/app/categories/categories_bloc.dart';
import 'components/categories_item.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(),
          if (context.watch<CategoriesBloc>().state.state == BlocState.success)
            GridView.builder(
              itemCount: context.read<CategoriesBloc>().state.data.length,
              padding: context.paddingNormal,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.4,
              ),
              itemBuilder: (context, index) {
                return CategoriesItem(
                  categoryModel:
                      context.read<CategoriesBloc>().state.data[index],
                );
              },
            ).toSliver,
          if (context.watch<CategoriesBloc>().state.state != BlocState.success)
            const SliverFillRemaining(
              child: SizedBox(
                height: 25,
                width: 25,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
