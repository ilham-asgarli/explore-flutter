import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String icon;
  final void Function(BuildContext context, Offset? offset) onTap;

  const ProfileItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        onTap(context, details.globalPosition);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.watch<ThemeBloc>().state.appColors.fourth,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(icon.toPNG),
              color: context.watch<ThemeBloc>().state.appColors.third,
            ),
            context.widget.verticalSpace(10),
            Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: context.watch<ThemeBloc>().state.appColors.third,
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
