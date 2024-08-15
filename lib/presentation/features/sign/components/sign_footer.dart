import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/di/injectable.dart';
import '../../../utils/config/router/core/router_service.dart';
import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/constants/router/router_constants.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/theme_extension.dart';
import '../../../utils/l10n/gen/app_localizations.dart';

class SignFooter extends StatelessWidget {
  final Sign sign;

  SignFooter({super.key, required this.sign}) {
    switch (sign) {
      case Sign.signUp:
        path1 = RouterConstants.signIn;
        path2 = RouterConstants.signIn;
        text1 = getIt<AppLocalizations>().haveAccount;
        text2 = getIt<AppLocalizations>().signIn;
        break;
      case Sign.signIn:
        path1 = RouterConstants.signUp;
        path2 = RouterConstants.signUp;
        text1 = getIt<AppLocalizations>().haveNoAccount;
        text2 = getIt<AppLocalizations>().signUp;
        break;
      case Sign.forgotPassword:
        path1 = RouterConstants.signIn;
        path2 = RouterConstants.signUp;
        text1 = getIt<AppLocalizations>().signIn;
        text2 = getIt<AppLocalizations>().signUp;
        break;
      case Sign.resetPassword:
        path1 = RouterConstants.resetPassword;
        path2 = RouterConstants.signIn;
        text1 = getIt<AppLocalizations>().sendCodeAgain;
        text2 = getIt<AppLocalizations>().signIn;
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
            color: context.theme.customColors.third,
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
