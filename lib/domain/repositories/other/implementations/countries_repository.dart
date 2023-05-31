import 'package:explore/core/base/models/base_response.dart';
import 'package:explore/domain/models/other/country_model.dart';
import 'package:explore/domain/repositories/other/interfaces/countries_interface.dart';

import '../../../../core/constants/enums/http_request_enum.dart';
import '../../../../core/network/core/core_http.dart';
import '../../../../utils/logic/constants/api/api_url_constants.dart';

class CountriesRepository extends CountriesInterface {
  @override
  Future<BaseResponse<List<CountryModel>>> get() async {
    BaseResponse<List<CountryModel>> response =
        await CoreHttp.instance.send<List<CountryModel>, CountryModel>(
      ApiUrlConstants.countries,
      type: HttpTypes.post,
      parseModel: CountryModel(),
    );

    return response;
  }
}
