import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/router/core/router_service.dart';
import 'package:explore/utils/logic/constants/router/router_constants.dart';
import 'package:explore/utils/logic/state/bloc/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../utils/logic/constants/locale/locale_keys.g.dart';

class SignFooter extends StatelessWidget {
  final Sign sign;

  SignFooter({Key? key, required this.sign}) : super(key: key) {
    switch (sign) {
      case Sign.signUp:
        path1 = RouterConstants.signIn;
        path2 = RouterConstants.signIn;
        text1 = LocaleKeys.haveAccount.tr();
        text2 = LocaleKeys.signIn.tr();
        break;
      case Sign.signIn:
        path1 = RouterConstants.signUp;
        path2 = RouterConstants.signUp;
        text1 = LocaleKeys.haveNoAccount.tr();
        text2 = LocaleKeys.signUp.tr();
        break;
      case Sign.forgotPassword:
        path1 = RouterConstants.signIn;
        path2 = RouterConstants.signUp;
        text1 = LocaleKeys.signIn.tr();
        text2 = LocaleKeys.signUp.tr();
        break;
      case Sign.resetPassword:
        path1 = RouterConstants.resetPassword;
        path2 = RouterConstants.signIn;
        text1 = LocaleKeys.sendCodeAgain.tr();
        text2 = LocaleKeys.signIn.tr();
        break;
    }
  }

  late final String path1, path2;
  late final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          TextButton(
            style: const ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
            ),
            onPressed: () {
              RouterService.instance.pushReplacementNamed(
                path: path1,
              );
            },
            child: Text(
              text1,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(fontSize: 13),
              ),
            ),
          ),
          Divider(
            color: context.watch<ThemeBloc>().state.appColors.third,
            thickness: 0.1,
            height: 20,
          ),
          TextButton(
            style: const ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
            ),
            onPressed: () {
              RouterService.instance.pushReplacementNamed(
                path: path2,
              );
            },
            child: Text(
              text2,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
