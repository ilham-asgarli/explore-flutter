import 'package:explore/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../utils/logic/state/bloc/theme/theme_bloc.dart';

class MyCheckboxListTile extends StatefulWidget {
  final String? title, subtitle;
  final ImageProvider<Object>? prefixIcon;
  final bool isPrefixColored;
  final bool value;
  final Color? iconColor, fillColor;
  final double? paddingVertical, paddingHorizontal;
  final double? fontSize;
  final void Function(bool?)? onChanged;

  const MyCheckboxListTile({
    Key? key,
    this.iconColor,
    this.fillColor,
    this.title,
    this.subtitle,
    this.value = false,
    this.prefixIcon,
    this.isPrefixColored = false,
    this.fontSize,
    this.paddingVertical,
    this.paddingHorizontal,
    this.onChanged,
  }) : super(key: key);

  @override
  State<MyCheckboxListTile> createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<MyCheckboxListTile> {
  late bool? value;

  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(!(value ?? false));
      },
      //borderRadius: BorderRadius.circular(12),
      child: Ink(
        padding: EdgeInsets.only(
          //top: widget.paddingVertical ?? context.lowValue,
          left: widget.paddingHorizontal ?? context.normalValue,
          right: widget.paddingHorizontal ?? context.normalValue,
        ),
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(12),
          color: widget.fillColor ??
              context.watch<ThemeBloc>().state.appColors.fourth,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                widget.prefixIcon != null
                    ? Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: !widget.isPrefixColored
                            ? ImageIcon(
                                widget.prefixIcon,
                                size: 25,
                                color: widget.iconColor,
                              )
                            : Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: widget.prefixIcon!,
                                  ),
                                ),
                              ),
                      )
                    : const SizedBox.shrink(),
                Text(
                  widget.title ?? "",
                  style: TextStyle(
                    fontSize: widget.fontSize ?? 18,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  widget.subtitle ?? "",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: widget.fontSize ?? 18,
                    ),
                  ),
                ),
                buildCheckbox(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCheckbox(BuildContext context) {
    return Ink(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.fillColor ??
              context.watch<ThemeBloc>().state.appColors.third,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Checkbox(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: value,
        activeColor: HexColor("#9BF6B0"),
        checkColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        side: BorderSide.none,
        onChanged: onTap,
      ),
    );
  }

  onTap(bool? newValue) {
    setState(() {
      value = newValue;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(newValue);
    }
  }
}
