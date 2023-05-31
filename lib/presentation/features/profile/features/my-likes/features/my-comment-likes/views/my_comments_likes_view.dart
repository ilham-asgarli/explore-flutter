import 'package:flutter/material.dart';

import '../../../../../../../../core/extensions/context_extension.dart';
import '../../../../../../../../core/extensions/widget_extension.dart';
import '../../../../../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../../components/my_comments_list_tile.dart';

class MyCommentsLikesView extends StatelessWidget {
  const MyCommentsLikesView({Key? key}) : super(key: key);

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
        return context.widget.verticalSpace(10);
      },
    );
  }
}
