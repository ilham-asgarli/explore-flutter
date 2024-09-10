part of 'langs_bloc.dart';

@immutable
sealed class LangsEvent {
  const LangsEvent();
}

class GetLangs extends LangsEvent {
  const GetLangs();
}
