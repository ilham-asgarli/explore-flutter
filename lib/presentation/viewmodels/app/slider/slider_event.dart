part of 'slider_bloc.dart';

@immutable
sealed class SliderEvent {
  const SliderEvent();
}

class GetSlider extends SliderEvent {
  final GetSliderUseCaseParams params;

  const GetSlider({
    required this.params,
  });
}
