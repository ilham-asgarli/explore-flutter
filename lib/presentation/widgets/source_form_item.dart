import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models/source/source.model.dart';
import '../../utils/gen/assets.gen.dart';
import '../utils/config/router/core/main_router_service.dart';
import '../utils/constants/router/main_router_constants.dart';
import '../utils/extensions/context_extension.dart';
import '../utils/extensions/num_extension.dart';
import '../utils/extensions/theme_extension.dart';
import 'my_checkbox_list_tile.dart';

class SourceFormItem extends StatelessWidget {
  final List<SourceModel> sources;
  final bool showAll;
  final bool showCheckbox;

  const SourceFormItem({
    super.key,
    this.showAll = false,
    this.showCheckbox = false,
    this.sources = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: context.theme.customColors.fourth,
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
        context.l10n.mySources,
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
          itemCount: sources.length,
          itemBuilder: (context, index) {
            return MyCheckboxListTile(
              value: true,
              title:
                  "${sources[index].channel.name} (${sources[index].category.name.tr})",
              showCheckbox: showCheckbox,
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
                color: context.theme.customColors.second, // HexColor("#F6F6F6")
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
      ),
    );
  }
}
