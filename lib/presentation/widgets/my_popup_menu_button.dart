import 'package:flutter/material.dart';

import 'my_popup_menu_button_item.dart';
import 'my_popup_menu_divider_theme.dart';

class MyPopupMenuButton extends StatelessWidget {
  final String icon;
  final Color? iconColor;
  final Function(String)? onSelected;
  final Map<String, String>? popupMenuItems;

  const MyPopupMenuButton({
    super.key,
    required this.icon,
    this.iconColor,
    this.onSelected,
    required this.popupMenuItems,
  });

  @override
  Widget build(BuildContext context) {
    return MyPopupMenuDividerTheme(
      child: PopupMenuButton<String>(
        icon: ImageIcon(
          AssetImage(icon),
          size: 25,
          color: iconColor,
        ),
        color: const Color(0xFF262222),
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
