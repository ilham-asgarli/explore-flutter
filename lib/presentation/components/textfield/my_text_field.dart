import 'package:flutter/material.dart';

import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import '../../widgets/my_popup_menu_button.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? prefixIcon, suffixIcon;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final Color? iconColor, fillColor;
  final double? fontSize;
  final Map<String, String>? popupMenuItems;
  final Function(String value)? onPopupMenuItemSelected;
  final Function(String? value)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final void Function(PointerDownEvent)? onTapOutside;

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
    this.onChanged,
    this.onTapOutside,
    this.suffix,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: onTapOutside ??
          (event) {
            FocusScope.of(context).unfocus();
          },
      onChanged: onChanged,
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
        suffixIcon: suffix ??
            (suffixIcon != null
                ? MyPopupMenuButton(
                    iconColor: iconColor,
                    onSelected: onPopupMenuItemSelected,
                    icon: suffixIcon!,
                    popupMenuItems: popupMenuItems,
                  )
                : null),
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
