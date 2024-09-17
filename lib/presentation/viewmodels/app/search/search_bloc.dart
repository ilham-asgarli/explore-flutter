import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../../../../utils/di/injectable.dart';
import '../../../../data/models/news/news.model.dart';
import '../../../../domain/usecases/feed/search.usecase.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'search_bloc.freezed.dart';
part 'search_bloc.g.dart';
part 'search_event.dart';
part 'search_state.dart';

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) =>
      events.debounceTime(duration).distinct().switchMap(mapper);
}

@lazySingleton
class SearchBloc extends HydratedBloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState()) {
    on<Search>(
      onSearch,
      transformer: debounce(const Duration(milliseconds: 500)),
    );
    on<Finish>(onFinishSearch);
    on<Clear>(onClearSearch);
    on<AddToHistory>(onAddToHistory);
    on<RemoveFromHistory>(onRemoveFromHistory);
  }

  void onSearch(Search event, Emitter<SearchState> emit) async {
    emit(state.copyWith(
      state: BlocState.loading,
    ));

    if (event.keyword.isEmpty) {
      add(const Clear());
      return;
    }

    var search = await getIt<SearchUseCase>()(SearchUseCaseParams(
      keyword: event.keyword,
      countryId: event.countryId,
    ));

    search.fold(
      (l) {
        add(Finish(error: l.message));
      },
      (r) {
        add(Finish(data: r));
      },
    );
  }

  void onFinishSearch(
    Finish event,
    Emitter<SearchState> emit,
  ) {
    if (event.data != null) {
      emit(state.copyWith(
        data: event.data!,
        state: BlocState.success,
      ));
    } else {
      emit(state.copyWith(
        error: event.error!,
        state: BlocState.error,
      ));
    }
  }

  void onClearSearch(
    Clear event,
    Emitter<SearchState> emit,
  ) {
    emit(SearchState(history: state.history));
  }

  void onAddToHistory(
    AddToHistory event,
    Emitter<SearchState> emit,
  ) {
    var history = List<String>.from(state.history);
    history.removeWhere((element) => element == event.keyword);
    history.insert(0, event.keyword);

    emit(state.copyWith(
      history: history,
    ));
  }

  void onRemoveFromHistory(
    RemoveFromHistory event,
    Emitter<SearchState> emit,
  ) {
    var history = List<String>.from(state.history);
    history.remove(event.keyword);

    emit(state.copyWith(
      history: history,
    ));
  }

  @disposeMethod
  @override
  Future<void> close() {
    return super.close();
  }

  @override
  SearchState? fromJson(Map<String, dynamic> json) {
    return SearchState(
        history: List<String>.from(
      json['history'],
    ));
  }

  @override
  Map<String, dynamic>? toJson(SearchState state) {
    return {
      'history': state.history,
    };
  }
}
