import '../../../models/other/country_model.dart';

abstract class CountriesInterface {
  Future<List<CountryModel>> get();
}
