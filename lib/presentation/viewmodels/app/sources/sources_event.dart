part of 'sources_bloc.dart';

@immutable
sealed class SourcesEvent {
  const SourcesEvent();
}

class GetSources extends SourcesEvent {
  final GetSourcesUseCaseParams params;

  const GetSources({
    required this.params,
  });
}
