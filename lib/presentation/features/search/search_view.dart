import 'package:flutter/material.dart';

import '../../../utils/gen/assets.gen.dart';
import '../../components/appbar/my_sliver_app_bar.dart';
import '../../components/textfield/my_text_field.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../utils/extensions/widget_extension.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});

  final searches = [
    "Haber",
    "Siyaset",
    "Galatasaray",
    "Amerika",
    "Torrent kimdir",
    "Dene",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(),
          Padding(
            padding: context.paddingNormal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTextField(
                  prefixIcon: Assets.image.icSearch.path,
                  suffixIcon: Assets.image.icSettings3.path,
                  hintText: context.l10n.sourceAndNewsSearchHint,
                  iconColor: context.theme.customColors.third,
                ),
                Padding(
                  padding: context.paddingNormalVertical,
                  child: Text(
                    context.l10n.searchHistory,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                buildHistory(context),
              ],
            ),
          ).toSliver,
        ],
      ),
    );
  }

  Wrap buildHistory(BuildContext context) {
    return Wrap(
      spacing: 15,
      children: [
        for (String search in searches)
          Chip(
            padding: context.paddingNormalHorizontal,
            label: Text(
              search,
              style: TextStyle(
                fontSize: 14,
                color: context.theme.customColors.third,
              ),
            ),
            backgroundColor: context.theme.customColors.fourth,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
      ],
    );
  }
}
