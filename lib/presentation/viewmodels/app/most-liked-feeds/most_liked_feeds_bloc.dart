import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../domain/usecases/feed/get_most_liked_feeds.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/cache/shared_preferences_constants.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'most_liked_feeds_bloc.freezed.dart';
part 'most_liked_feeds_bloc.g.dart';
part 'most_liked_feeds_event.dart';
part 'most_liked_feeds_state.dart';

@lazySingleton
class MostLikedFeedsBloc
    extends Bloc<MostLikedFeedsEvent, MostLikedFeedsState> {
  MostLikedFeedsBloc() : super(const MostLikedFeedsState()) {
    on<GetMostLikedFeeds>(onGetMostLikedFeeds);

    int? countryId = getIt<SharedPreferences>()
        .getInt(SharedPreferencesConstants.chosenCountryId);
    add(GetMostLikedFeeds(
        params: GetMostLikedFeedsUseCaseParams(countryId: countryId!)));
  }

  onGetMostLikedFeeds(
      GetMostLikedFeeds event, Emitter<MostLikedFeedsState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response =
        await getIt<GetMostLikedFeedsUseCase>()(GetMostLikedFeedsUseCaseParams(
      countryId: event.params.countryId,
    ));

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: r)),
    );
  }
}
