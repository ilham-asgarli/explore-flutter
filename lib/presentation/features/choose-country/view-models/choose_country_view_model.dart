import 'package:explore/domain/usecases/other/implementations/countries_usecase.dart';
import 'package:explore/presentation/features/choose-country/components/choose_country_dialog.dart';
import 'package:flutter/material.dart';

import '../../../../core/base/view-models/base_view_model.dart';
import '../../../../domain/models/other/country_model.dart';

class ChooseCountryViewModel extends BaseViewModel {
  final CountriesUseCase countriesUseCase = CountriesUseCase();
  late final Future<List<CountryModel>> future;

  @override
  init() {
    future = getCountries();
    super.init();
  }

  void onChooseCountry(BuildContext context, CountryModel countryModel) {
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

  Future<List<CountryModel>> getCountries() async {
    // return await countriesUseCase.get();

    //TODO remove this.
    return [
      CountryModel(
        id: 1,
        name: "Türkiye",
        code: "tr",
        flag:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Flag_of_the_Ottoman_Empire_%281844%E2%80%931922%29.svg/200px-Flag_of_the_Ottoman_Empire_%281844%E2%80%931922%29.svg.png",
      )
    ];
  }
}
