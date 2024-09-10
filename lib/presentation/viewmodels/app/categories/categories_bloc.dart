import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/usecases/feed/get_categories.usecase.dart';
import '../../../../domain/utils/base/no_params.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'categories_bloc.freezed.dart';
part 'categories_bloc.g.dart';
part 'categories_event.dart';
part 'categories_state.dart';

@lazySingleton
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(const CategoriesState()) {
    on<GetCategories>(onGetCategories);

    add(const GetCategories());
  }

  onGetCategories(GetCategories event, Emitter<CategoriesState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response = await getIt<GetCategoriesUseCase>()(NoParams());

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: r)),
    );
  }
}
