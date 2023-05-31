import 'package:centered_singlechildscrollview/centered_singlechildscrollview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/widget_extension.dart';
import '../../../../core/router/core/router_service.dart';
import '../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../../../utils/logic/constants/router/router_constants.dart';
import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../components/gradient_elevated_button.dart';
import '../../../components/my_text_field.dart';
import '../components/app_name.dart';
import '../components/sign_footer.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CenteredSingleChildScrollView(
          children: [
            Expanded(
              child: Container(
                padding: context.paddingMedium,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const AppName(),
                    Column(
                      children: [
                        context.widget.verticalSpace(40),
                        buildForgotPasswordForm(context),
                        context.widget.verticalSpace(40),
                        GradientElevatedButton(
                          text: LocaleKeys.resetPassword.tr(),
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
          ],
        ),
      ),
    );
  }

  Widget buildForgotPasswordForm(BuildContext context) {
    return Form(
      child: Column(
        children: [
          MyTextField(
            hintText: LocaleKeys.email.tr(),
            prefixIcon: "ic_envelope",
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            iconColor: context.watch<ThemeBloc>().state.appColors.third,
          ),
        ],
      ),
    );
  }
}
