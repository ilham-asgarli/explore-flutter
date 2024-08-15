import 'package:flutter/material.dart';

import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../widgets/my_popup_menu_button.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final String? prefixIcon, suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final Color? iconColor, fillColor;
  final double? fontSize;
  final Map<String, String>? popupMenuItems;
  final Function(String value)? onPopupMenuItemSelected;
  final Function(String? value)? onFieldSubmitted;

  const MyTextField({
    super.key,
    this.hintText = "",
    this.prefixIcon,
    this.suffixIcon,
    this.popupMenuItems,
    this.onPopupMenuItemSelected,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.iconColor,
    this.fillColor,
    this.fontSize,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: fillColor ?? context.theme.customColors.fourth,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ImageIcon(
                  AssetImage(prefixIcon!),
                  size: 25,
                  color: iconColor,
                ),
              )
            : null,
        suffixIcon: suffixIcon != null
            ? MyPopupMenuButton(
                iconColor: iconColor,
                onSelected: onPopupMenuItemSelected,
                icon: suffixIcon!,
                popupMenuItems: popupMenuItems,
              )
            : null,
        prefixIconConstraints: const BoxConstraints(),
        suffixIconConstraints: const BoxConstraints(),
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: "Matter",
          color: iconColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
