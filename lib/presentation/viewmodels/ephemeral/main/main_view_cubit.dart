import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'main_view_state.dart';

@lazySingleton
class MainViewCubit extends Cubit<MainViewState> {
  MainViewCubit() : super(const MainViewState());
}
