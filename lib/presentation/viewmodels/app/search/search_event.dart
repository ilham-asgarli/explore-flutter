part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {
  const SearchEvent();
}

class Search extends SearchEvent {
  final String keyword;
  final int countryId;

  const Search({
    required this.keyword,
    required this.countryId,
  });
}

class Finish extends SearchEvent {
  final List<NewsModel>? data;
  final String? error;

  const Finish({
    this.data,
    this.error,
  });
}

class Clear extends SearchEvent {
  const Clear();
}

class AddToHistory extends SearchEvent {
  final String keyword;

  const AddToHistory({
    required this.keyword,
  });
}

class RemoveFromHistory extends SearchEvent {
  final String keyword;

  const RemoveFromHistory({
    required this.keyword,
  });
}
