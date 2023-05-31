import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/presentation/components/my_profile_picture_image.dart';
import 'package:explore/presentation/components/news_statistic.dart';
import 'package:explore/utils/logic/constants/enums/app_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../utils/logic/constants/app/app_constants.dart';
import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../components/my_popup_menu_button_item.dart';

class Comment extends StatelessWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingNormal,
      decoration: BoxDecoration(
        color: context.watch<ThemeBloc>().state.appColors.fourth,
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
                          color: HexColor("#858997"),
                        ),
                      ),
                    ],
                  ),
                  context.widget.verticalSpace(3),
                  Text(
                    "YorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorumYorum",
                    style: TextStyle(
                      fontSize: 14,
                      color: HexColor("#858997"),
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
                  AssetImage("ic_more_horizontal".toPNG),
                  color: HexColor("#707070"),
                ),
              ),
              NewsStatistic(
                statistic: Statistic.like,
                iconSize: 40,
                color: HexColor("#707070"),
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
      color: HexColor("#262222"),
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
