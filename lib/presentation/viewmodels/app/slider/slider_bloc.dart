import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../domain/usecases/feed/get_slider.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/cache/shared_preferences_constants.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'slider_bloc.freezed.dart';
part 'slider_bloc.g.dart';
part 'slider_event.dart';
part 'slider_state.dart';

@lazySingleton
class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(const SliderState()) {
    on<GetSlider>(onGetSlider);

    int? countryId = getIt<SharedPreferences>()
        .getInt(SharedPreferencesConstants.chosenCountryId);
    add(GetSlider(params: GetSliderUseCaseParams(countryId: countryId!)));
  }

  onGetSlider(GetSlider event, Emitter<SliderState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response = await getIt<GetSliderUseCase>()(GetSliderUseCaseParams(
      countryId: event.params.countryId,
    ));

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: r)),
    );
  }
}
