import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/extensions/context_extension.dart';
import '../utils/extensions/theme_extension.dart';

class MySwitchTile extends StatefulWidget {
  final String text;
  final String? prefixIcon;
  final Color? iconColor, fillColor;
  final bool value;
  final void Function(bool)? onChanged;

  const MySwitchTile({
    super.key,
    this.value = false,
    this.prefixIcon,
    this.text = "",
    this.iconColor,
    this.fillColor,
    this.onChanged,
  });

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
          color: widget.fillColor ?? context.theme.customColors.fourth,
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
                      AssetImage(widget.prefixIcon ?? ""),
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
              activeColor: const Color(0xFF9BF6B0),
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
