part of 'slider_bloc.dart';

@Freezed()
class SliderState with _$SliderState {
  const SliderState._();

  const factory SliderState({
    dynamic data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _SliderState;

  factory SliderState.fromJson(Map<String, Object?> json) =>
      _$SliderStateFromJson(json);
}
