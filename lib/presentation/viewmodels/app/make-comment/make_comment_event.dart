part of 'make_comment_bloc.dart';

@immutable
sealed class MakeCommentEvent {
  const MakeCommentEvent();
}

class MakeComment extends MakeCommentEvent {
  final CreateCommentUseCaseParams params;

  const MakeComment({
    required this.params,
  });
}
