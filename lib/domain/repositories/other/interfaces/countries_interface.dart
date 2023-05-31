import '../../../../core/base/models/base_response.dart';
import '../../../models/other/country_model.dart';

abstract class CountriesInterface {
  Future<BaseResponse<List<CountryModel>>> get();
}
