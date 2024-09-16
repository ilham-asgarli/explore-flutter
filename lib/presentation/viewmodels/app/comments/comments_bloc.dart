import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/models/comment/comment.model.dart';
import '../../../../domain/usecases/feed/get_comments.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'comments_bloc.freezed.dart';
part 'comments_bloc.g.dart';
part 'comments_event.dart';
part 'comments_state.dart';

@lazySingleton
class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc() : super(const CommentsState()) {
    on<GetComments>(onGetComments);
    on<Clear>(onClear);
  }

  onGetComments(GetComments event, Emitter<CommentsState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response = await getIt<GetCommentsUseCase>()(GetCommentsUseCaseParams(
      feedId: event.params.feedId,
    ));

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: r)),
    );
  }

  onClear(Clear event, Emitter<CommentsState> emit) {
    emit(const CommentsState());
  }
}
