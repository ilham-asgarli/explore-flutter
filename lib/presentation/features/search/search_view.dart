import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/di/injectable.dart';
import '../../../utils/gen/assets.gen.dart';
import '../../components/appbar/my_sliver_app_bar.dart';
import '../../components/textfield/my_text_field.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/num_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../utils/extensions/widget_extension.dart';
import '../../viewmodels/app/search/search_bloc.dart';
import '../../viewmodels/ephemeral/search/search_view_model.dart';
import '../news-comments/components/news.dart';

class SearchView extends StatelessWidget {
  final SearchViewModel viewModel;

  const SearchView({
    super.key,
    required this.viewModel,
  });

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
                  controller: viewModel.searchController,
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
                ),
                if (context.watch<SearchBloc>().state.history.isNotEmpty) ...[
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
                if (context.watch<SearchBloc>().state.data != null)
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: context.watch<SearchBloc>().state.data!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return News(
                        news: context.watch<SearchBloc>().state.data![index],
                        newsClickable: true,
                        addToHistory: () {
                          getIt<SearchBloc>().add(AddToHistory(
                              keyword: viewModel.searchController.text));
                        },
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
        for (String search in context.watch<SearchBloc>().state.history)
          Chip(
            padding: context.paddingNormalHorizontal,
            onDeleted: () {
              getIt<SearchBloc>().add(RemoveFromHistory(keyword: search));
            },
            deleteIcon: const Icon(
              Icons.close,
              size: 15,
              color: Colors.red,
            ),
            label: InkWell(
              onTap: () {
                viewModel.searchController.text = search;
                /*int? countryId = getIt<SharedPreferences>()
                    .getInt(SharedPreferencesConstants.chosenCountryId);
                getIt<SearchBloc>()
                    .add(Search(keyword: search, countryId: countryId!));*/
              },
              child: Text(
                search,
                style: TextStyle(
                  fontSize: 14,
                  color: context.theme.customColors.third,
                ),
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
