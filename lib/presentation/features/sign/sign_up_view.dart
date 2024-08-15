import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/gen/assets.gen.dart';
import '../../components/button/gradient_elevated_button.dart';
import '../../components/textfield/my_text_field.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/num_extension.dart';
import '../../utils/extensions/theme_extension.dart';
import 'components/app_name.dart';
import 'components/sign_footer.dart';
import 'sign_up_view_model.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final SignUpViewModel _viewModel = SignUpViewModel();

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
                    buildSignUpForm(context),
                    40.verticalSpace,
                    GradientElevatedButton(
                      text: context.l10n.save,
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
      ),
    );
  }

  Widget buildSignUpForm(BuildContext context) {
    return Form(
      child: Column(
        children: [
          MyTextField(
            hintText: context.l10n.username,
            prefixIcon: Assets.image.icPerson.path,
            textInputAction: TextInputAction.next,
            iconColor: context.theme.customColors.third,
          ),
          10.verticalSpace,
          MyTextField(
            hintText: context.l10n.phone,
            prefixIcon: Assets.image.icPhone.path,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            iconColor: context.theme.customColors.third,
          ),
          10.verticalSpace,
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
          20.verticalSpace,
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
                  10.verticalSpace,
                  Text(
                    context.l10n.agreementDescription,
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
