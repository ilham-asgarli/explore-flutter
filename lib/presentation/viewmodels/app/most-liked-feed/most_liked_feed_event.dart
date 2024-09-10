part of 'most_liked_feed_bloc.dart';

@immutable
sealed class MostLikedFeedEvent {
  const MostLikedFeedEvent();
}

class GetMostLikedFeed extends MostLikedFeedEvent {
  final GetMostLikedFeedUseCaseParams params;

  const GetMostLikedFeed({
    required this.params,
  });
}
