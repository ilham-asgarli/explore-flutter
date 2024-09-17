import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/gen/assets.gen.dart';
import '../../components/appbar/my_sliver_app_bar.dart';
import '../../components/textfield/my_text_field.dart';
import '../../utils/constants/app/app_constants.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/num_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../utils/extensions/widget_extension.dart';
import '../../viewmodels/app/explore/explore_bloc.dart';
import '../../viewmodels/app/slider/slider_bloc.dart';
import 'components/news_2.dart';
import 'components/news_3.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(),
          Column(
            children: [
              //buildSearch(context),
              News3(
                height: context.dynamicHeight(0.3),
                scrollDirection: Axis.horizontal,
                news: context.watch<SliderBloc>().state.data ?? [],
              ),
              buildVerticalNewsHeader(context),
              News2(
                padding: context.paddingNormal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                news: context.watch<ExploreBloc>().state.data ?? [],
              ),
            ],
          ).toSliver,
        ],
      ),
    );
  }

  Widget buildSearch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.normalValue,
        right: context.normalValue,
        top: context.normalValue,
      ),
      child: MyTextField(
        hintText: context.l10n.searchNews,
        prefixIcon: Assets.image.icSearch.path,
        suffixIcon: Assets.image.icSettingsSliders.path,
        popupMenuItems: AppConstants.homePopUpMenuItems,
        textInputAction: TextInputAction.search,
        iconColor: const Color(0xFF4B4B4B),
        onFieldSubmitted: (value) {},
      ),
    );
  }

  Widget buildVerticalNewsHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.normalValue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageIcon(
                size: 20,
                color: context.theme.customColors.third,
                AssetImage(Assets.image.icExplore.path),
              ),
              5.horizontalSpace,
              Text(
                context.l10n.explore,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          /*GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  context.l10n.all,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                5.horizontalSpace,
                ImageIcon(
                  size: 20,
                  color: context.theme.customColors.third,
                  AssetImage(Assets.image.icAngleCircleRight.path),
                ),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}
