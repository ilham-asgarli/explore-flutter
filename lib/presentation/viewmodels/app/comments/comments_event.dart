part of 'comments_bloc.dart';

@immutable
sealed class CommentsEvent {
  const CommentsEvent();
}

class GetComments extends CommentsEvent {
  final GetCommentsUseCaseParams params;

  const GetComments({
    required this.params,
  });
}

class Clear extends CommentsEvent {
  const Clear();
}
