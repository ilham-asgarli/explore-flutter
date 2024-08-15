import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/num_extension.dart';
import '../../../utils/extensions/theme_extension.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String icon;
  final void Function(BuildContext context, Offset? offset) onTap;

  const ProfileItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        onTap(context, details.globalPosition);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.theme.customColors.fourth,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(icon),
              color: context.theme.customColors.third,
            ),
            10.verticalSpace,
            Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: context.theme.customColors.third,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
