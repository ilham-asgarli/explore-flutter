import '../../../../../../core/base/view-models/base_view_model.dart';
import '../../../../../../domain/models/other/country_model.dart';

class MyAccountViewModel extends BaseViewModel {
  final List<CountryModel> countryModels = [
    CountryModel(name: "Türkiye", id: 1),
    CountryModel(name: "Azerbaycan", id: 2),
    CountryModel(name: "Türkiye", id: 3),
    CountryModel(name: "Azerbaycan", id: 4),
    CountryModel(name: "Türkiye", id: 5),
    CountryModel(name: "Azerbaycan", id: 6),
    CountryModel(name: "Türkiye", id: 7),
    CountryModel(name: "Azerbaycan", id: 8),
    CountryModel(name: "Türkiye", id: 9),
    CountryModel(name: "Azerbaycan", id: 10),
  ];
}
