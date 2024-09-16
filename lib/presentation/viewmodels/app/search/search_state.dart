part of 'search_bloc.dart';

@Freezed()
class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState({
    List<NewsModel>? data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _SearchState;

  factory SearchState.fromJson(Map<String, Object?> json) =>
      _$SearchStateFromJson(json);
}
