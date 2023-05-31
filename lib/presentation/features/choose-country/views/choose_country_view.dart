import 'package:explore/domain/models/other/country_model.dart';
import 'package:explore/presentation/widgets/future_widget.dart';
import 'package:flutter/material.dart';

import '../components/country.dart';
import '../view-models/choose_country_view_model.dart';

class ChooseCountryView extends StatelessWidget {
  ChooseCountryView({Key? key}) : super(key: key);

  final ChooseCountryViewModel _chooseCountryViewModel =
      ChooseCountryViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<CountryModel>>(
        future: _chooseCountryViewModel.future,
        builder: (context, snapshot) {
          return FutureWidget<List<CountryModel>>(
            snapshot: snapshot,
            successWidget: buildCountries,
          );
        },
      ),
    );
  }

  Widget buildCountries(List<CountryModel> countryModels) {
    return GridView.builder(
      itemCount: countryModels.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemBuilder: (context, index) {
        CountryModel countryModel = countryModels[index];

        return GestureDetector(
          onTap: () {
            _chooseCountryViewModel.onChooseCountry(
              context,
              countryModel,
            );
          },
          child: Country(
            countryModel: countryModel,
          ),
        );
      },
    );
  }
}
