import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/di/injectable.dart';
import '../../../utils/gen/assets.gen.dart';
import '../../components/appbar/my_sliver_app_bar.dart';
import '../../components/textfield/my_text_field.dart';
import '../../utils/constants/cache/shared_preferences_constants.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/num_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../utils/extensions/widget_extension.dart';
import '../../viewmodels/app/search/search_bloc.dart';
import '../news-comments/components/news.dart';

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
                  suffix: (context.watch<SearchBloc>().state.state ==
                          BlocState.loading)
                      ? Container(
                          margin: context.paddingNormalHorizontal,
                          width: 15,
                          height: 15,
                          child: const CircularProgressIndicator(),
                        )
                      : null,
                  //suffixIcon: Assets.image.icSettings3.path,
                  hintText: context.l10n.sourceAndNewsSearchHint,
                  iconColor: context.theme.customColors.third,
                  onChanged: (p0) {
                    int? countryId = getIt<SharedPreferences>()
                        .getInt(SharedPreferencesConstants.chosenCountryId);
                    getIt<SearchBloc>()
                        .add(Search(keyword: p0, countryId: countryId!));
                  },
                ),
                /*Padding(
                  padding: context.paddingNormalVertical,
                  child: Text(
                    context.l10n.searchHistory,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                buildHistory(context),*/
                if (context.watch<SearchBloc>().state.data != null)
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: context.watch<SearchBloc>().state.data!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return News(
                        news: context.watch<SearchBloc>().state.data![index],
                        newsClickable: true,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return 10.verticalSpace;
                    },
                  ),
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
