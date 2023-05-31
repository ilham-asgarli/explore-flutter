import 'package:explore/presentation/components/my_popup_menu_divider_theme.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'my_popup_menu_button_item.dart';

class MyPopupMenuButton extends StatelessWidget {
  final String icon;
  final Color? iconColor;
  final Function(String)? onSelected;
  final Map<String, String>? popupMenuItems;

  const MyPopupMenuButton({
    Key? key,
    required this.icon,
    this.iconColor,
    this.onSelected,
    required this.popupMenuItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPopupMenuDividerTheme(
      child: PopupMenuButton<String>(
        icon: ImageIcon(
          AssetImage(icon),
          size: 25,
          color: iconColor,
        ),
        color: HexColor("#262222"),
        onSelected: onSelected,
        itemBuilder: (context) {
          return List<PopupMenuEntry<String>>.generate(
            popupMenuItems != null ? popupMenuItems!.length * 2 - 1 : 0,
            (i) => (i % 2 == 0
                ? MyPopupMenuButtonItem(
                    entry: popupMenuItems?.entries.elementAt(i ~/ 2),
                  )
                : const PopupMenuDivider(
                    height: 0,
                  )) as PopupMenuEntry<String>,
          );
        },
      ),
    );
  }
}
