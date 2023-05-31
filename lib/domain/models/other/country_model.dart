import 'package:explore/core/base/models/base_model.dart';

class CountryModel extends BaseModel<CountryModel> {
  int? id;
  String? name;
  String? code;
  String? flag;

  CountryModel({
    this.id,
    this.name,
    this.code,
    this.flag,
  });

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['code'] = code;
    data['flag'] = flag;
    return data;
  }

  @override
  CountryModel fromJson(Map<String, dynamic> json) {
    return CountryModel(
      id: json['id'],
      name: json['name'],
      code: json['code'],
      flag: json['flag'],
    );
  }
}
