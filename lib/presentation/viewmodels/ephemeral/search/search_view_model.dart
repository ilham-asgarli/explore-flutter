import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/cache/shared_preferences_constants.dart';
import '../../app/search/search_bloc.dart';

@lazySingleton
class SearchViewModel {
  SearchViewModel() {
    searchController.addListener(() {
      int? countryId = getIt<SharedPreferences>()
          .getInt(SharedPreferencesConstants.chosenCountryId);
      getIt<SearchBloc>()
          .add(Search(keyword: searchController.text, countryId: countryId!));
    });
  }

  TextEditingController searchController = TextEditingController();
}
