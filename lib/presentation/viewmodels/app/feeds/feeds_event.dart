part of 'feeds_bloc.dart';

@immutable
sealed class FeedsEvent {
  const FeedsEvent();
}

class GetFeeds extends FeedsEvent {
  final GetFeedsUseCaseParams params;

  const GetFeeds({
    required this.params,
  });
}
