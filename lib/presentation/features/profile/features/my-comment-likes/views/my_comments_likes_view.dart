import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/utils/logic/constants/enums/app_enum.dart';
import 'package:explore/utils/logic/constants/locale/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../components/my_sliver_app_bar.dart';
import '../../../components/my_comments_list_tile.dart';

class MyCommentsLikesView extends StatelessWidget {
  const MyCommentsLikesView({Key? key}) : super(key: key);

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
                  LocaleKeys.commentLikes.tr(),
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
