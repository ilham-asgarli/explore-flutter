import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/models/lang/lang.model.dart';
import '../../../features/choose-country/components/choose_country_dialog.dart';

@lazySingleton
class ChooseCountryViewModel {
  ChooseCountryViewModel() {}

  void onChooseCountry(BuildContext context, LangModel countryModel) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.8),
      builder: (BuildContext context) {
        return ChooseCountryDialog(
          countryModel: countryModel,
        );
      },
    );
  }
}
