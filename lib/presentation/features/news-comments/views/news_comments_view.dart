import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/utils/logic/constants/enums/app_enum.dart';
import 'package:flutter/material.dart';

import '../../../components/my_sliver_app_bar.dart';
import '../components/comment.dart';
import '../components/news.dart';
import '../components/write_comment.dart';

class NewsCommentsView extends StatelessWidget {
  const NewsCommentsView({Key? key}) : super(key: key);

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
                context.widget.verticalSpace(25),
                const WriteComment(),
                context.widget.verticalSpace(10),
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
        return context.widget.verticalSpace(10);
      },
    );
  }
}
