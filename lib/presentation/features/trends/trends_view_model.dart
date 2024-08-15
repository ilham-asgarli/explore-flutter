import '../../../data/models/lang/lang.model.dart';

class TrendsViewModel {
  final List<LangModel> countryModels = [
    LangModel(
      name: "Türkiye",
      id: 1,
      flag:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/640px-Flag_of_Turkey.svg.png",
      code: 'TR',
    ),
    LangModel(
      name: "Azerbaycan",
      id: 2,
      flag:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Flag_of_Azerbaijan.svg/1200px-Flag_of_Azerbaijan.svg.png",
      code: 'AZ',
    ),
  ];
}
