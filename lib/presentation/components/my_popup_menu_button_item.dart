import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPopupMenuButtonItem<String> extends PopupMenuItem<String> {
  final MapEntry<String, String>? entry;

  MyPopupMenuButtonItem({
    Key? key,
    required this.entry,
    super.padding = EdgeInsets.zero,
    super.onTap,
  }) : super(
          key: key,
          textStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          value: entry?.key,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                entry?.value.toString() ?? "",
              ),
            ],
          ),
        );
}
