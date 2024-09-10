import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/lang/lang.model.dart';
import '../../utils/constants/enums/app_enum.dart';
import '../../viewmodels/app/langs/langs_bloc.dart';
import '../../viewmodels/ephemeral/choose-country/choose_country_view_model.dart';
import 'components/country.dart';

class ChooseCountryView extends StatelessWidget {
  final ChooseCountryViewModel chooseCountryViewModel;

  const ChooseCountryView({
    super.key,
    required this.chooseCountryViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LangsBloc, LangsState>(
        builder: (context, state) {
          if (state.state == BlocState.success) {
            return buildCountries(state.data);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
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
            chooseCountryViewModel.onChooseCountry(
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
