import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/utils/logic/constants/enums/app_enum.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../components/my_sliver_app_bar.dart';
import '../../../../home/components/news_2.dart';

class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({Key? key}) : super(key: key);

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
