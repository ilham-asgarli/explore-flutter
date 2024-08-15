import 'package:flutter/material.dart';

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

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

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
                    buildForgotPasswordForm(context),
                    40.verticalSpace,
                    GradientElevatedButton(
                      text: context.l10n.resetPassword,
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        RouterService.instance.pushReplacementNamed(
                          path: RouterConstants.resetPassword,
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: context.paddingLow,
                  child: SignFooter(sign: Sign.forgotPassword),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForgotPasswordForm(BuildContext context) {
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
        ],
      ),
    );
  }
}
