import 'package:easy_localization/easy_localization.dart';
import 'package:explore/core/extensions/string_extension.dart';
import 'package:explore/core/extensions/widget_extension.dart';
import 'package:explore/core/router/core/router_service.dart';
import 'package:explore/presentation/features/choose-country/components/country.dart';
import 'package:explore/utils/logic/constants/router/router_constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/cache/shared_preferences_manager.dart';
import '../../../../domain/models/other/country_model.dart';
import '../../../../utils/logic/constants/cache/shared_preferences_constants.dart';
import '../../../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../../components/gradient_elevated_button.dart';

class ChooseCountryDialog extends StatelessWidget {
  final CountryModel countryModel;

  const ChooseCountryDialog({Key? key, required this.countryModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Country(
            countryModel: countryModel,
            light: true,
          ),
          context.widget.verticalSpace(30),
          GradientElevatedButton(
            onTap: () async {
              int? id = countryModel.id;

              if (id == null) {
                return;
              }

              await SharedPreferencesManager.instance.preferences
                  ?.setInt(SharedPreferencesConstants.chosenCountryId, id);
              RouterService.instance.pushNamed(path: RouterConstants.signUp);
            },
            text: LocaleKeys.continue_.tr(),
          ),
          context.widget.verticalSpace(30),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ImageIcon(
              AssetImage("ic_back".toPNG),
              size: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
