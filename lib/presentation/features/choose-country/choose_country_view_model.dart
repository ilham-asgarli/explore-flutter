import 'package:flutter/material.dart';

import '../../../data/models/lang/lang.model.dart';
import 'components/choose_country_dialog.dart';

class ChooseCountryViewModel {
  late final Future<List<LangModel>> future;

  ChooseCountryViewModel() {
    future = getCountries();
  }

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

  Future<List<LangModel>> getCountries() async {
    // return await countriesUseCase.get();

    //TODO remove this.
    return [
      LangModel(
        id: 1,
        name: "Türkiye",
        code: "tr",
        flag:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Flag_of_the_Ottoman_Empire_%281844%E2%80%931922%29.svg/200px-Flag_of_the_Ottoman_Empire_%281844%E2%80%931922%29.svg.png",
      )
    ];
  }
}
