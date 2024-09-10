part of 'explore_bloc.dart';

@Freezed()
class ExploreState with _$ExploreState {
  const ExploreState._();

  const factory ExploreState({
    dynamic data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _ExploreState;

  factory ExploreState.fromJson(Map<String, Object?> json) =>
      _$ExploreStateFromJson(json);
}
