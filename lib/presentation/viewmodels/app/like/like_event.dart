part of 'like_bloc.dart';

@immutable
sealed class LikeEvent {
  const LikeEvent();
}

class Like extends LikeEvent {
  final LikeUseCaseParams params;

  const Like({
    required this.params,
  });
}

class Unlike extends LikeEvent {
  final UnlikeUseCaseParams params;

  const Unlike({
    required this.params,
  });
}
