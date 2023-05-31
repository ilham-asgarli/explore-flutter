import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/presentation/components/my_text_field.dart';
import 'package:explore/presentation/features/home/components/news_3.dart';
import 'package:explore/utils/logic/constants/app/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../components/my_sliver_app_bar.dart';
import '../components/news_2.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
              ),
              buildVerticalNewsHeader(context),
              News2(
                padding: context.paddingNormal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
        hintText: LocaleKeys.searchNews.tr(),
        prefixIcon: "ic_search",
        suffixIcon: "ic_settings_sliders",
        popupMenuItems: AppConstants.homePopUpMenuItems,
        textInputAction: TextInputAction.search,
        iconColor: HexColor("#4B4B4B"),
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
                color: context.watch<ThemeBloc>().state.appColors.third,
                AssetImage("ic_explore".toPNG),
              ),
              context.widget.horizontalSpace(5),
              Text(
                LocaleKeys.explore.tr(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  LocaleKeys.all.tr(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                context.widget.horizontalSpace(5),
                ImageIcon(
                  size: 20,
                  color: context.watch<ThemeBloc>().state.appColors.third,
                  AssetImage("ic_angle_circle_right".toPNG),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
