import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/usecases/feed/like.usecase.dart';
import '../../../../domain/usecases/feed/unlike.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'like_bloc.freezed.dart';
part 'like_bloc.g.dart';
part 'like_event.dart';
part 'like_state.dart';

@lazySingleton
class LikeBloc extends HydratedBloc<LikeEvent, LikeState> {
  LikeBloc() : super(const LikeState()) {
    on<Like>(onLike);
    on<Unlike>(onUnlike);
  }

  onLike(Like event, Emitter<LikeState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response = await getIt<LikeUseCase>()(LikeUseCaseParams(
      id: event.params.id,
    ));

    List<int> newData = List.from(state.data)..add(event.params.id);
    if (newData.length > 100) {
      newData.removeAt(0);
    }

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: newData)),
    );
  }

  onUnlike(Unlike event, Emitter<LikeState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response = await getIt<UnlikeUseCase>()(UnlikeUseCaseParams(
      id: event.params.id,
    ));

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(
          state: BlocState.success,
          data: List.from(state.data)..remove(event.params.id))),
    );
  }

  @override
  LikeState? fromJson(Map<String, dynamic> json) {
    return LikeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(LikeState state) {
    return state.toJson();
  }
}
