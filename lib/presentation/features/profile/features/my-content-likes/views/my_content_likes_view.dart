import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/presentation/features/home/components/news_2_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../../../../components/my_sliver_app_bar.dart';

class MyContentLikesView extends StatelessWidget {
  const MyContentLikesView({Key? key}) : super(key: key);

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
                  LocaleKeys.myLikes.tr(),
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
