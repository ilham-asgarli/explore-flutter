import 'package:freezed_annotation/freezed_annotation.dart';

part 'lang.model.freezed.dart';
part 'lang.model.g.dart';

@Freezed()
class LangModel with _$LangModel {
  const LangModel._();

  const factory LangModel({
    required int id,
    required String name,
    required String country,
    required String code,
    required String flag,
  }) = _LangModel;

  factory LangModel.fromJson(Map<String, Object?> json) =>
      _$LangModelFromJson(json);
}
