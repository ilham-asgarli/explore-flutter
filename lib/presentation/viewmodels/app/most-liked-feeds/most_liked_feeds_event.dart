part of 'most_liked_feeds_bloc.dart';

@immutable
sealed class MostLikedFeedsEvent {
  const MostLikedFeedsEvent();
}

class GetMostLikedFeeds extends MostLikedFeedsEvent {
  final GetMostLikedFeedsUseCaseParams params;

  const GetMostLikedFeeds({
    required this.params,
  });
}
