import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/context_extension.dart';
import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/presentation/components/my_dropdown_button_field.dart';
import 'package:explore/presentation/components/my_text_field.dart';
import 'package:explore/presentation/features/profile/features/my-account/view-models/my_account_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../../../components/gradient_elevated_button.dart';
import '../../../../../components/my_sliver_app_bar.dart';
import '../components/country_dropdown_item.dart';

class MyAccountView extends StatelessWidget {
  MyAccountView({Key? key}) : super(key: key);

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
                            context.widget.verticalSpace(40),
                            buildForm(context),
                            context.widget.verticalSpace(40),
                            GradientElevatedButton(
                              text: LocaleKeys.save.tr(),
                              onTap: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                            ),
                            context.widget.verticalSpace(40),
                          ],
                        ),
                        buildDeleteAccount(),
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
        color: context.watch<ThemeBloc>().state.appColors.fourth,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        LocaleKeys.myAccountSettings.tr(),
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  Widget buildDeleteAccount() {
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
        LocaleKeys.deleteAccount.tr(),
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
          context.widget.verticalSpace(10),
          MyDropdownButtonFormField<int>(
            menuMaxHeight: context.dynamicHeight(0.3),
            hintText: LocaleKeys.changeCountry.tr(),
            prefixIcon: AssetImage("ic_pennant".toPNG),
            iconColor: context.watch<ThemeBloc>().state.appColors.third,
            value: _viewModel.countryModels[0].id ?? 0,
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
