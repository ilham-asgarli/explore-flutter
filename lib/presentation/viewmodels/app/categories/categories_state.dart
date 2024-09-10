part of 'categories_bloc.dart';

@Freezed()
class CategoriesState with _$CategoriesState {
  const CategoriesState._();

  const factory CategoriesState({
    dynamic data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _CategoriesState;

  factory CategoriesState.fromJson(Map<String, Object?> json) =>
      _$CategoriesStateFromJson(json);
}
