import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../components/button/gradient_elevated_button.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../utils/extensions/context_extension.dart';
import '../../utils/extensions/num_extension.dart';
import 'components/app_name.dart';
import 'components/sign_footer.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

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
                    buildTimeArea(),
                    40.verticalSpace,
                    buildResetPasswordForm(context),
                    40.verticalSpace,
                    GradientElevatedButton(
                      text: context.l10n.verify,
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: context.paddingLow,
                  child: SignFooter(sign: Sign.resetPassword),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildTimeArea() {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        shape: BoxShape.circle,
      ),
      child: Text(
        "57",
        style: const TextStyle(
          fontSize: 69,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildResetPasswordForm(BuildContext context) {
    return Column(
      children: [
        PinCodeTextField(
          appContext: context,
          length: 4,
          obscureText: false,
          animationType: AnimationType.fade,
          keyboardType: TextInputType.number,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 50,
            activeFillColor: const Color(0xFFE5E5E5),
            selectedColor: const Color(0xFFE5E5E5),
            activeColor: const Color(0xFFE5E5E5),
            selectedFillColor: const Color(0xFFE5E5E5),
            inactiveColor: const Color(0xFFE5E5E5),
            inactiveFillColor: const Color(0xFFE5E5E5),
          ),
          animationDuration: const Duration(milliseconds: 300),
          //backgroundColor: HexColor("#E5E5E5"),
          enableActiveFill: true,
          onCompleted: (v) {},
          onChanged: (value) {},
        )
      ],
    );
  }
}
