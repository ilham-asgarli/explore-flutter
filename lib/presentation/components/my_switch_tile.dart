import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/utils/logic/state/bloc/theme/theme_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MySwitchTile extends StatefulWidget {
  final String text;
  final String? prefixIcon;
  final Color? iconColor, fillColor;
  final bool value;
  final void Function(bool)? onChanged;

  const MySwitchTile({
    Key? key,
    this.value = false,
    this.prefixIcon,
    this.text = "",
    this.iconColor,
    this.fillColor,
    this.onChanged,
  }) : super(key: key);

  @override
  State<MySwitchTile> createState() => _MySwitchTileState();
}

class _MySwitchTileState extends State<MySwitchTile> {
  late bool value;

  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(!value);
      },
      borderRadius: BorderRadius.circular(12),
      child: Ink(
        padding: context.paddingLow,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: widget.fillColor ??
              context.watch<ThemeBloc>().state.appColors.fourth,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Visibility(
                  visible: widget.prefixIcon != null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ImageIcon(
                      AssetImage(widget.prefixIcon?.toPNG ?? ""),
                      size: 25,
                      color: widget.iconColor,
                    ),
                  ),
                ),
                Text(
                  widget.text,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: widget.iconColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            CupertinoSwitch(
              value: value,
              activeColor: HexColor("#9BF6B0"),
              onChanged: onTap,
            ),
          ],
        ),
      ),
    );
  }

  onTap(bool newValue) {
    setState(() {
      value = newValue;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(newValue);
    }
  }
}
