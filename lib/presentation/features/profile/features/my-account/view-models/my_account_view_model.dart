import '../../../../../../data/models/lang/lang.model.dart';

class MyAccountViewModel {
  final List<LangModel> countryModels = [
    LangModel(
        name: "Türkiye", id: 1, code: 'TR', flag: '🇹🇷', country: 'Turkey'),
    LangModel(
        name: "Azerbaycan",
        id: 2,
        code: 'AZ',
        flag: '🇦🇿',
        country: 'Azerbaijan'),
  ];
}
