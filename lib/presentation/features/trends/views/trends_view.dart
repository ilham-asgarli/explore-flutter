import 'package:cached_network_image/cached_network_image.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/presentation/components/my_dropdown_button_field.dart';
import 'package:explore/presentation/features/profile/features/my-account/components/country_dropdown_item.dart';
import 'package:explore/presentation/features/trends/view-models/trends_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../components/my_sliver_app_bar.dart';
import '../../home/components/news_1.dart';

class TrendsView extends StatelessWidget {
  TrendsView({Key? key}) : super(key: key);

  final TrendsViewModel _viewModel = TrendsViewModel();

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
                buildChangeCountry(context),
                News1(
                  height: context.dynamicHeight(0.25),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 11),
                ),
              ],
            ),
          ).toSliver,
        ],
      ),
    );
  }

  Widget buildChangeCountry(BuildContext context) {
    return MyDropdownButtonFormField<int>(
      contentPadding: const EdgeInsets.all(15),
      menuMaxHeight: context.dynamicHeight(0.3),
      value: 1,
      isPrefixColored: true,
      iconColor: context.watch<ThemeBloc>().state.appColors.third,
      suffixIcon: AssetImage("ic_global_search".toPNG),
      items: _viewModel.countryModels
          .map((e) => MyDropdownButtonFormFieldModel<int>(
                value: e.id ?? 0,
                prefixIcon: CachedNetworkImageProvider(e.flag ?? ""),
                child: CountryDropdownItem(
                  countryModel: e,
                  style: GoogleFonts.poppins(),
                ),
              ))
          .toList(),
    );
  }
}
