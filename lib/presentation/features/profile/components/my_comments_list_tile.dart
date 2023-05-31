import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';

class MyCommentsListTile extends StatelessWidget {
  final Comments comments;
  final void Function()? onTap;

  const MyCommentsListTile({
    Key? key,
    required this.comments,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: context.watch<ThemeBloc>().state.appColors.fourth,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: context.normalValue),
        onTap: onTap,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(
                comments == Comments.liked
                    ? "ic_heart_search".toPNG
                    : "ic_message_search".toPNG,
              ),
              color: context.watch<ThemeBloc>().state.appColors.third,
            ),
          ],
        ),
        title: Row(
          children: [
            Text(
              "Title",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: context.paddingLow,
              child: Image.asset(
                "ic_ellipse".toPNG,
                width: 5,
                height: 5,
              ),
            ),
            Text(
              "14d önce",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: HexColor("#787C81"),
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
        subtitle: Text(
          "Impressive",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage(
              comments == Comments.liked
                  ? "ic_heart".toPNG
                  : "ic_close_circle".toPNG,
            ),
            size: comments == Comments.liked ? 35 : 20,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
