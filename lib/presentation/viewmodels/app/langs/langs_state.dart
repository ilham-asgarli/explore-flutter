part of 'langs_bloc.dart';

@Freezed()
class LangsState with _$LangsState {
  const LangsState._();

  const factory LangsState({
    dynamic data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _LangsState;

  factory LangsState.fromJson(Map<String, Object?> json) =>
      _$LangsStateFromJson(json);
}
