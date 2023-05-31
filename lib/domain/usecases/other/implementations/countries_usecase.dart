import 'package:explore/core/base/models/base_response.dart';
import 'package:explore/core/base/models/base_success.dart';
import 'package:explore/domain/models/other/country_model.dart';
import 'package:explore/domain/repositories/other/implementations/countries_repository.dart';
import 'package:explore/domain/usecases/other/interfaces/countries_interface.dart';

class CountriesUseCase extends CountriesInterface {
  CountriesRepository countriesRepository = CountriesRepository();

  @override
  Future<List<CountryModel>> get() async {
    BaseResponse<List<CountryModel>> baseResponse =
        await countriesRepository.get();

    if (baseResponse is BaseSuccess<List<CountryModel>>) {
      return baseResponse.data;
    }
    return [];
  }
}
