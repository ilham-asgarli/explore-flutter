import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/usecases/feed/get_feeds.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'feeds_bloc.freezed.dart';
part 'feeds_bloc.g.dart';
part 'feeds_event.dart';
part 'feeds_state.dart';

@lazySingleton
class FeedsBloc extends Bloc<FeedsEvent, FeedsState> {
  FeedsBloc() : super(const FeedsState()) {
    on<GetFeeds>(onGetFeeds);
  }

  onGetFeeds(GetFeeds event, Emitter<FeedsState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response = await getIt<GetFeedsUseCase>()(GetFeedsUseCaseParams(
      countryId: event.params.countryId,
      categoryId: event.params.categoryId,
    ));

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: r)),
    );
  }
}
