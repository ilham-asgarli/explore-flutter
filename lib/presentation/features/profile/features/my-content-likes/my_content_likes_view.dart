import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../components/appbar/my_sliver_app_bar.dart';
import '../../../../utils/constants/enums/app_enum.dart';
import '../../../../utils/extensions/context_extension.dart';
import '../../../../utils/extensions/widget_extension.dart';
import '../../../home/components/news_2_item.dart';

class MyContentLikesView extends StatelessWidget {
  const MyContentLikesView({super.key});

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
                  context.l10n.myLikes,
                  style: GoogleFonts.jost(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const News2Item();
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
