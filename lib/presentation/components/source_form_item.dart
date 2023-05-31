import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../utils/logic/constants/router/main_router_constants.dart';
import '../../utils/logic/core/router/main_router_service.dart';
import '../../utils/logic/state/bloc/theme/theme_bloc.dart';
import 'my_checkbox_list_tile.dart';

class SourceFormItem extends StatelessWidget {
  final bool showAll;

  const SourceFormItem({Key? key, this.showAll = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: context.watch<ThemeBloc>().state.appColors.fourth,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildFormHeader(context),
          buildForm(context),
          Visibility(
            visible: showAll,
            child: buildShowAll(context),
          ),
        ],
      ),
    );
  }

  Widget buildFormHeader(BuildContext context) {
    return Padding(
      padding: context.paddingNormal,
      child: Text(
        LocaleKeys.mySources.tr(),
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildForm(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          padding: const EdgeInsets.only(
            bottom: 15,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return MyCheckboxListTile(
              value: true,
              title: "Kaynak",
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: 10,
                top: 3,
                left: context.normalValue,
                right: context.normalValue,
              ),
              child: Divider(
                color: context
                    .watch<ThemeBloc>()
                    .state
                    .appColors
                    .second, // HexColor("#F6F6F6")
                height: 0,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget buildShowAll(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.normalValue,
        bottom: context.normalValue,
      ),
      child: GestureDetector(
        onTap: () {
          MainRouterService.instance.pushNamed(
            path: MainRouterConstants.showAll,
          );
        },
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
    );
  }
}
