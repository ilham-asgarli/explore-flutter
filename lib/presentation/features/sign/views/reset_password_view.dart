import 'package:centered_singlechildscrollview/centered_singlechildscrollview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/widget_extension.dart';
import '../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../../components/gradient_elevated_button.dart';
import '../components/app_name.dart';
import '../components/sign_footer.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

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
                        buildTimeArea(),
                        context.widget.verticalSpace(40),
                        buildResetPasswordForm(context),
                        context.widget.verticalSpace(40),
                        GradientElevatedButton(
                          text: LocaleKeys.verify.tr(),
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
          ],
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
            activeFillColor: HexColor("#E5E5E5"),
            selectedColor: HexColor("#E5E5E5"),
            activeColor: HexColor("#E5E5E5"),
            selectedFillColor: HexColor("#E5E5E5"),
            inactiveColor: HexColor("#E5E5E5"),
            inactiveFillColor: HexColor("#E5E5E5"),
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
