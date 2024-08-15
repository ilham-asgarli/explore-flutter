import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/gen/assets.gen.dart';
import '../../components/appbar/my_sliver_app_bar.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../utils/extensions/widget_extension.dart';
import '../../widgets/my_dropdown_button_field.dart';
import '../home/components/news_1.dart';
import '../profile/features/my-account/components/country_dropdown_item.dart';
import 'trends_view_model.dart';

class TrendsView extends StatelessWidget {
  TrendsView({super.key});

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
      iconColor: context.theme.customColors.third,
      suffixIcon: AssetImage(Assets.image.icGlobalSearch.path),
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
