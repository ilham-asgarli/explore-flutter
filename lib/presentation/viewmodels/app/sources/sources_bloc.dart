import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/models/source/source.model.dart';
import '../../../../domain/usecases/feed/get_sources.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/cache/shared_preferences_constants.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'sources_bloc.freezed.dart';
part 'sources_bloc.g.dart';
part 'sources_event.dart';
part 'sources_state.dart';

@lazySingleton
class SourcesBloc extends Bloc<SourcesEvent, SourcesState> {
  SourcesBloc() : super(const SourcesState()) {
    on<GetSources>(onGetSources);

    int? countryId = getIt<SharedPreferences>()
        .getInt(SharedPreferencesConstants.chosenCountryId);
    add(GetSources(params: GetSourcesUseCaseParams(countryId: countryId!)));
  }

  onGetSources(GetSources event, Emitter<SourcesState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response = await getIt<GetSourcesUseCase>()(GetSourcesUseCaseParams(
      countryId: event.params.countryId,
    ));

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: r)),
    );
  }
}
