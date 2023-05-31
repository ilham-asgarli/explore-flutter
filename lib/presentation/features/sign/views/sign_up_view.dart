import 'package:centered_singlechildscrollview/centered_singlechildscrollview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/widget_extension.dart';
import '../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../components/gradient_elevated_button.dart';
import '../../../components/my_text_field.dart';
import '../components/app_name.dart';
import '../components/sign_footer.dart';
import '../view-models/sign_up_view_model.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final SignUpViewModel _viewModel = SignUpViewModel();

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
                        buildSignUpForm(context),
                        context.widget.verticalSpace(40),
                        GradientElevatedButton(
                          text: LocaleKeys.save.tr(),
                          onTap: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: context.paddingLow,
                      child: SignFooter(sign: Sign.signUp),
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

  Widget buildSignUpForm(BuildContext context) {
    return Form(
      child: Column(
        children: [
          MyTextField(
            hintText: LocaleKeys.username.tr(),
            prefixIcon: "ic_person",
            textInputAction: TextInputAction.next,
            iconColor: context.watch<ThemeBloc>().state.appColors.third,
          ),
          context.widget.verticalSpace(10),
          MyTextField(
            hintText: LocaleKeys.phone.tr(),
            prefixIcon: "ic_phone",
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            iconColor: context.watch<ThemeBloc>().state.appColors.third,
          ),
          context.widget.verticalSpace(10),
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
          context.widget.verticalSpace(20),
          GestureDetector(
            onTap: () {
              setState(() {
                _viewModel.acceptedAgreement = !_viewModel.acceptedAgreement;
              });
            },
            child: AbsorbPointer(
              child: Row(
                children: [
                  Radio<bool>(
                    value: true,
                    groupValue: _viewModel.acceptedAgreement,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                    onChanged: (value) {},
                  ),
                  context.widget.horizontalSpace(10),
                  Text(
                    LocaleKeys.agreementDescription.tr(),
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
