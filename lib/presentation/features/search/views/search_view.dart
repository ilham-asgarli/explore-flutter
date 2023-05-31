import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/presentation/components/my_text_field.dart';
import 'package:explore/utils/logic/constants/locale/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../components/my_sliver_app_bar.dart';

class SearchView extends StatelessWidget {
  SearchView({Key? key}) : super(key: key);

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
                  prefixIcon: "ic_search",
                  suffixIcon: "ic_settings_3",
                  hintText: LocaleKeys.sourceAndNewsSearchHint.tr(),
                  iconColor: context.watch<ThemeBloc>().state.appColors.third,
                ),
                Padding(
                  padding: context.paddingNormalVertical,
                  child: Text(
                    LocaleKeys.searchHistory.tr(),
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
                color: context.watch<ThemeBloc>().state.appColors.third,
              ),
            ),
            backgroundColor: context.watch<ThemeBloc>().state.appColors.fourth,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
      ],
    );
  }
}
