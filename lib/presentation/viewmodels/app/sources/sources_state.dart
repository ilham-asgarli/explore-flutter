part of 'sources_bloc.dart';

@Freezed()
class SourcesState with _$SourcesState {
  const SourcesState._();

  const factory SourcesState({
    List<SourceModel>? data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _SourcesState;

  factory SourcesState.fromJson(Map<String, Object?> json) =>
      _$SourcesStateFromJson(json);
}
