import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../utils/gen/assets.gen.dart';
import '../../../../../components/appbar/my_sliver_app_bar.dart';
import '../../../../../components/button/gradient_elevated_button.dart';
import '../../../../../components/textfield/my_text_field.dart';
import '../../../../../utils/constants/enums/app_enum.dart';
import '../../../../../utils/extensions/context_extension.dart';
import '../../../../../utils/extensions/num_extension.dart';
import '../../../../../utils/extensions/theme_extension.dart';
import '../../../../../widgets/my_dropdown_button_field.dart';
import '../components/country_dropdown_item.dart';
import '../view-models/my_account_view_model.dart';

class MyAccountView extends StatelessWidget {
  MyAccountView({super.key});

  final MyAccountViewModel _viewModel = MyAccountViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(
            appBarLeading: AppBarLeading.back,
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: context.paddingMedium,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader(context),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            40.verticalSpace,
                            buildForm(context),
                            40.verticalSpace,
                            GradientElevatedButton(
                              text: context.l10n.save,
                              onTap: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                            ),
                            40.verticalSpace,
                          ],
                        ),
                        buildDeleteAccount(context),
                      ],
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

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: context.paddingNormal,
      decoration: BoxDecoration(
        color: context.theme.customColors.fourth,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        context.l10n.myAccountSettings,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  Widget buildDeleteAccount(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
      ),
      onPressed: () {},
      child: Text(
        context.l10n.deleteAccount,
        style: GoogleFonts.jost(
          textStyle: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  Widget buildForm(BuildContext context) {
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
          10.verticalSpace,
          MyDropdownButtonFormField<int>(
            menuMaxHeight: context.dynamicHeight(0.3),
            hintText: context.l10n.changeCountry,
            prefixIcon: AssetImage(Assets.image.icPennant.path),
            iconColor: context.theme.customColors.third,
            value: _viewModel.countryModels[0].id,
            items: _viewModel.countryModels
                .map((e) => MyDropdownButtonFormFieldModel<int>(
                      value: e.id ?? 0,
                      child: CountryDropdownItem(
                        countryModel: e,
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
