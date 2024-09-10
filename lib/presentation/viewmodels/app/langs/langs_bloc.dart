import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/usecases/feed/get_langs.usecase.dart';
import '../../../../domain/utils/base/no_params.dart';
import '../../../../utils/di/injectable.dart';
import '../../../utils/constants/enums/app_enum.dart';

part 'langs_bloc.freezed.dart';
part 'langs_bloc.g.dart';
part 'langs_event.dart';
part 'langs_state.dart';

@lazySingleton
class LangsBloc extends Bloc<LangsEvent, LangsState> {
  LangsBloc() : super(const LangsState()) {
    on<GetLangs>(onGetLangs);
  }

  onGetLangs(GetLangs event, Emitter<LangsState> emit) async {
    emit(state.copyWith(state: BlocState.loading));

    var response = await getIt<GetLangsUseCase>()(NoParams());

    response.fold(
      (l) => emit(state.copyWith(state: BlocState.error, error: l.message)),
      (r) => emit(state.copyWith(state: BlocState.success, data: r)),
    );
  }
}
