import 'package:flutter/material.dart';

import '../../components/appbar/my_sliver_app_bar.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/num_extension.dart';
import '../../utils/extensions/widget_extension.dart';
import 'components/comment.dart';
import 'components/news.dart';
import 'components/write_comment.dart';

class NewsCommentsView extends StatelessWidget {
  const NewsCommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(
            appBarLeading: AppBarLeading.back,
          ),
          Padding(
            padding: context.paddingNormal,
            child: Column(
              children: [
                const News(),
                25.verticalSpace,
                const WriteComment(),
                10.verticalSpace,
                buildComments(context),
              ],
            ),
          ).toSliver,
        ],
      ),
    );
  }

  Widget buildComments(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Comment();
      },
      separatorBuilder: (context, index) {
        return 10.verticalSpace;
      },
    );
  }
}
