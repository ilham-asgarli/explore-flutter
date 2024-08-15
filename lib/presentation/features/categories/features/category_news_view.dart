import 'package:flutter/material.dart';

import '../../../components/appbar/my_sliver_app_bar.dart';
import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/widget_extension.dart';
import '../../home/components/news_2.dart';

class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(
            appBarLeading: AppBarLeading.back,
          ),
          News2(
            padding: context.paddingNormal,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ).toSliver,
        ],
      ),
    );
  }
}
