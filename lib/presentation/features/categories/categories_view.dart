import 'package:flutter/material.dart';

import '../../components/appbar/my_sliver_app_bar.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/widget_extension.dart';
import 'components/categories_item.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(),
          GridView.builder(
            itemCount: 8,
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
              return const CategoriesItem();
            },
          ).toSliver,
        ],
      ),
    );
  }
}
