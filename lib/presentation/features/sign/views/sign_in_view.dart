import 'package:centered_singlechildscrollview/centered_singlechildscrollview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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
import '../view-models/sign_in_view_model.dart';

class SignInView extends StatelessWidget {
  SignInView({Key? key}) : super(key: key);

  final SignInViewModel _signInViewModel = SignInViewModel();

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
                        buildSignInForm(context),
                        context.widget.verticalSpace(20),
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
                            LocaleKeys.forgotPassword.tr(),
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        context.widget.verticalSpace(40),
                        GradientElevatedButton(
                          text: LocaleKeys.signIn.tr(),
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
          ],
        ),
      ),
    );
  }

  Widget buildSignInForm(BuildContext context) {
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
          context.widget.verticalSpace(10),
          MyTextField(
            hintText: LocaleKeys.password.tr(),
            prefixIcon: "ic_password",
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            iconColor: context.watch<ThemeBloc>().state.appColors.third,
          ),
        ],
      ),
    );
  }
}
