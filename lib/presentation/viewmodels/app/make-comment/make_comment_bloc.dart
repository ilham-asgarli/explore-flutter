import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/usecases/feed/create_comment.usecase.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'make_comment_bloc.freezed.dart';
part 'make_comment_bloc.g.dart';
part 'make_comment_event.dart';
part 'make_comment_state.dart';

@lazySingleton
class MakeCommentBloc extends Bloc<MakeCommentEvent, MakeCommentState> {
  MakeCommentBloc() : super(const MakeCommentState()) {
    on<MakeComment>(onGetMakeComment);
  }

  onGetMakeComment(MakeComment event, Emitter<MakeCommentState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response =
        await getIt<CreateCommentUseCase>()(CreateCommentUseCaseParams(
      feedId: event.params.feedId,
      comment: event.params.comment,
      email: event.params.email,
      name: event.params.name,
    ));

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: true)),
    );
  }
}
