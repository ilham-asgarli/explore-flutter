part of 'explore_bloc.dart';

@immutable
sealed class ExploreEvent {
  const ExploreEvent();
}

class GetExplore extends ExploreEvent {
  final GetExploreUseCaseParams params;

  const GetExplore({
    required this.params,
  });
}
