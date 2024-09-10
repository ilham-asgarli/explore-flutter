import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../domain/usecases/feed/get_explore.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/cache/shared_preferences_constants.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'explore_bloc.freezed.dart';
part 'explore_bloc.g.dart';
part 'explore_event.dart';
part 'explore_state.dart';

@lazySingleton
class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  ExploreBloc() : super(const ExploreState()) {
    on<GetExplore>(onGetExplore);

    int? countryId = getIt<SharedPreferences>()
        .getInt(SharedPreferencesConstants.chosenCountryId);
    add(GetExplore(params: GetExploreUseCaseParams(countryId: countryId!)));
  }

  onGetExplore(GetExplore event, Emitter<ExploreState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response = await getIt<GetExploreUseCase>()(GetExploreUseCaseParams(
      countryId: event.params.countryId,
    ));

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: r)),
    );
  }
}
