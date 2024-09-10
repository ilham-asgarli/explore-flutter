import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../domain/usecases/feed/get_most_liked_feed.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/cache/shared_preferences_constants.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'most_liked_feed_bloc.freezed.dart';
part 'most_liked_feed_bloc.g.dart';
part 'most_liked_feed_event.dart';
part 'most_liked_feed_state.dart';

@lazySingleton
class MostLikedFeedBloc extends Bloc<MostLikedFeedEvent, MostLikedFeedState> {
  MostLikedFeedBloc() : super(const MostLikedFeedState()) {
    on<GetMostLikedFeed>(onGetMostLikedFeed);

    int? countryId = getIt<SharedPreferences>()
        .getInt(SharedPreferencesConstants.chosenCountryId);
    add(GetMostLikedFeed(
        params: GetMostLikedFeedUseCaseParams(countryId: countryId!)));
  }

  onGetMostLikedFeed(
      GetMostLikedFeed event, Emitter<MostLikedFeedState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response =
        await getIt<GetMostLikedFeedUseCase>()(GetMostLikedFeedUseCaseParams(
      countryId: event.params.countryId,
    ));

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: r)),
    );
  }
}
