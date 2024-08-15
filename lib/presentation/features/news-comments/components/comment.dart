import 'package:flutter/material.dart';

import '../../../../utils/gen/assets.gen.dart';
import '../../../utils/constants/app/app_constants.dart';
import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/num_extension.dart';
import '../../../utils/extensions/theme_extension.dart';
import '../../../widgets/my_popup_menu_button_item.dart';
import '../../../widgets/my_profile_picture_image.dart';
import '../../../widgets/news_statistic.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingNormal,
      decoration: BoxDecoration(
        color: context.theme.customColors.fourth,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: MyProfilePictureImageProvider(),
          ),
          Expanded(
            child: Padding(
              padding: context.paddingLowHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "İsim",
                        style: TextStyle(
                          fontFamily: "Matter",
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "10:00",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF858997),
                        ),
                      ),
                    ],
                  ),
                  3.verticalSpace,
                  Text(
                    "YorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorum",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF858997),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTapDown: (TapDownDetails details) {
                  onComplain(details.globalPosition, context);
                },
                child: ImageIcon(
                  AssetImage(Assets.image.icMoreHorizontal.path),
                  color: const Color(0xFF707070),
                ),
              ),
              NewsStatistic(
                statistic: Statistic.like,
                iconSize: 40,
                color: const Color(0xFF707070),
                count: 4,
                fontWeight: FontWeight.bold,
                axis: Axis.vertical,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onComplain(Offset offset, BuildContext context) async {
    final Map<String, String> popupMenuItems =
        AppConstants.commentPopUpMenuItems;

    double dx = offset.dx;
    double dy = offset.dy;

    String? selected = await showMenu<String>(
      context: context,
      color: const Color(0xFF262222),
      position: RelativeRect.fromLTRB(
        context.width - (context.width - dx) * 2,
        dy,
        context.width - (context.width - dx) * 2,
        dy,
      ),
      items: List<PopupMenuEntry<String>>.generate(
        popupMenuItems.length * 2 - 1,
        (i) => (i % 2 == 0
            ? MyPopupMenuButtonItem(
                entry: popupMenuItems.entries.elementAt(i ~/ 2),
              )
            : const PopupMenuDivider(
                height: 0,
              )) as PopupMenuEntry<String>,
      ),
    );

    if (selected == AppConstants.commentPopUpMenuItems.keys.elementAt(0)) {}
  }
}
