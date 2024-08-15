import 'package:flutter/material.dart';

import '../../../data/models/lang/lang.model.dart';
import '../../widgets/future_widget.dart';
import 'choose_country_view_model.dart';
import 'components/country.dart';

class ChooseCountryView extends StatelessWidget {
  ChooseCountryView({super.key});

  final ChooseCountryViewModel _chooseCountryViewModel =
      ChooseCountryViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<LangModel>>(
        future: _chooseCountryViewModel.future,
        builder: (context, snapshot) {
          return FutureWidget<List<LangModel>>(
            snapshot: snapshot,
            successWidget: buildCountries,
          );
        },
      ),
    );
  }

  Widget buildCountries(List<LangModel> countryModels) {
    return GridView.builder(
      itemCount: countryModels.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemBuilder: (context, index) {
        LangModel countryModel = countryModels[index];

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
