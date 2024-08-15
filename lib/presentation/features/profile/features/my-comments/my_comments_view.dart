import 'package:flutter/material.dart';

import '../../../../components/appbar/my_sliver_app_bar.dart';
import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../../../utils/extensions/num_extension.dart';
import '../../../../utils/extensions/widget_extension.dart';
import '../../components/my_comments_list_tile.dart';

class MyCommentsView extends StatelessWidget {
  const MyCommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(
            appBarLeading: AppBarLeading.back,
          ),
          ListView.separated(
            padding: context.paddingNormal,
            shrinkWrap: true,
            itemCount: 25,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const MyCommentsListTile(
                comments: Comments.my,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return 10.verticalSpace;
            },
          ).toSliver,
        ],
      ),
    );
  }
}
