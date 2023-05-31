import 'package:explore/core/base/view-models/base_view_model.dart';

import '../../../../domain/models/other/country_model.dart';

class TrendsViewModel extends BaseViewModel {
  final List<CountryModel> countryModels = [
    CountryModel(
      name: "Türkiye",
      id: 1,
      flag:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/640px-Flag_of_Turkey.svg.png",
    ),
    CountryModel(
      name: "Azerbaycan",
      id: 2,
      flag:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Flag_of_Azerbaijan.svg/1200px-Flag_of_Azerbaijan.svg.png",
    ),
  ];
}
