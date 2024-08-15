import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/gen/assets.gen.dart';
import '../../components/button/gradient_elevated_button.dart';
import '../../components/textfield/my_text_field.dart';
import '../../utils/config/router/core/router_service.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/constants/router/router_constants.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/num_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import 'components/app_name.dart';
import 'components/sign_footer.dart';
import 'sign_in_view_model.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});

  final SignInViewModel _signInViewModel = SignInViewModel();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: context.paddingMedium,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const AppName(),
                Column(
                  children: [
                    40.verticalSpace,
                    buildSignInForm(context),
                    40.verticalSpace,
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
                          path: RouterConstants.forgotPassword,
                        );
                      },
                      child: Text(
                        context.l10n.forgotPassword,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    40.verticalSpace,
                    GradientElevatedButton(
                      text: context.l10n.signIn,
                      onTap: _signInViewModel.onSignedIn,
                    ),
                  ],
                ),
                Padding(
                  padding: context.paddingLow,
                  child: SignFooter(sign: Sign.signIn),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSignInForm(BuildContext context) {
    return Form(
      child: Column(
        children: [
          MyTextField(
            hintText: context.l10n.email,
            prefixIcon: Assets.image.icEnvelope.path,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            iconColor: context.theme.customColors.third,
          ),
          10.verticalSpace,
          MyTextField(
            hintText: context.l10n.password,
            prefixIcon: Assets.image.icPassword.path,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            iconColor: context.theme.customColors.third,
          ),
        ],
      ),
    );
  }
}
