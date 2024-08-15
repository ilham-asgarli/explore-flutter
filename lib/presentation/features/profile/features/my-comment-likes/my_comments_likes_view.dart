import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../components/appbar/my_sliver_app_bar.dart';
import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../../../utils/extensions/widget_extension.dart';
import '../../components/my_comments_list_tile.dart';

class MyCommentsLikesView extends StatelessWidget {
  const MyCommentsLikesView({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.commentLikes,
                  style: GoogleFonts.jost(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 25,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const MyCommentsListTile(
                      comments: Comments.liked,
                    );
                  },
                ),
              ],
            ),
          ).toSliver,
        ],
      ),
    );
  }
}
