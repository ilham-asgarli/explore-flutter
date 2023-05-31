import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/utils/logic/constants/enums/app_enum.dart';
import 'package:flutter/material.dart';

import '../../../../../components/my_sliver_app_bar.dart';
import '../../../components/my_comments_list_tile.dart';

class MyCommentsView extends StatelessWidget {
  const MyCommentsView({Key? key}) : super(key: key);

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
              return context.widget.verticalSpace(10);
            },
          ).toSliver,
        ],
      ),
    );
  }
}
