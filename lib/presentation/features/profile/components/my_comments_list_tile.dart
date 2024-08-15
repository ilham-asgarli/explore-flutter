import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/gen/assets.gen.dart';
import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/theme_extension.dart';

class MyCommentsListTile extends StatelessWidget {
  final Comments comments;
  final void Function()? onTap;

  const MyCommentsListTile({
    super.key,
    required this.comments,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: context.theme.customColors.fourth,
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
                    ? Assets.image.icHeartSearch.path
                    : Assets.image.icMessageSearch.path,
              ),
              color: context.theme.customColors.third,
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
                Assets.image.icEllipse.path,
                width: 5,
                height: 5,
              ),
            ),
            Text(
              "14d önce",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color(0xFF787C81),
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
                  ? Assets.image.icHeart.path
                  : Assets.image.icCloseCircle.path,
            ),
            size: comments == Comments.liked ? 35 : 20,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
