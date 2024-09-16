import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/models/lang/lang.model.dart';
import '../../../domain/usecases/feed/get_most_liked_feeds.usecase.dart';
import '../../../utils/di/injectable.dart';
import '../../../utils/gen/assets.gen.dart';
import '../../components/appbar/my_sliver_app_bar.dart';
import '../../utils/constants/cache/shared_preferences_constants.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../utils/extensions/widget_extension.dart';
import '../../viewmodels/app/langs/langs_bloc.dart';
import '../../viewmodels/app/most-liked-feeds/most_liked_feeds_bloc.dart';
import '../../viewmodels/ephemeral/trends/trends_view_model.dart';
import '../../widgets/my_dropdown_button_field.dart';
import '../home/components/news_1.dart';
import '../profile/features/my-account/components/country_dropdown_item.dart';

class TrendsView extends StatelessWidget {
  final TrendsViewModel viewModel;

  const TrendsView({
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
            child: buildChangeCountry(context),
          ).toSliver,
          if (context.watch<MostLikedFeedsBloc>().state.state ==
              BlocState.success)
            News1(
              height: context.dynamicHeight(0.25),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: context.paddingNormal,
              news: context.watch<MostLikedFeedsBloc>().state.data,
            ).toSliver,
          if (context.watch<MostLikedFeedsBloc>().state.state !=
              BlocState.success)
            const SliverFillRemaining(
              child: SizedBox(
                height: 25,
                width: 25,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildChangeCountry(BuildContext context) {
    return MyDropdownButtonFormField<int>(
      contentPadding: const EdgeInsets.all(15),
      menuMaxHeight: context.dynamicHeight(0.3),
      value: getIt<SharedPreferences>()
              .getInt(SharedPreferencesConstants.chosenCountryId) ??
          1,
      isPrefixColored: true,
      iconColor: context.theme.customColors.third,
      suffixIcon: AssetImage(Assets.image.icGlobalSearch.path),
      onChanged: (p0) {
        getIt<MostLikedFeedsBloc>().add(GetMostLikedFeeds(
            params: GetMostLikedFeedsUseCaseParams(countryId: p0 ?? 1)));
      },
      items: context.watch<LangsBloc>().state.data != null
          ? (context.watch<LangsBloc>().state.data as List<LangModel>)
              .map((e) => MyDropdownButtonFormFieldModel<int>(
                    value: e.id,
                    prefixIcon: CachedNetworkImageProvider(e.flag),
                    child: CountryDropdownItem(
                      countryModel: e,
                      style: GoogleFonts.poppins(),
                    ),
                  ))
              .toList()
          : [],
    );
  }
}
