import 'package:flutter/material.dart';

import '../../../../../../utils/constants/enums/app_enum.dart';
import '../../../../../../utils/extensions/context_extension.dart';
import '../../../../../../utils/extensions/num_extension.dart';
import '../../../../components/my_comments_list_tile.dart';

class MyCommentsLikesView extends StatelessWidget {
  const MyCommentsLikesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(bottom: context.normalValue),
      shrinkWrap: true,
      itemCount: 25,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const MyCommentsListTile(
          comments: Comments.liked,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return 10.verticalSpace;
      },
    );
  }
}
