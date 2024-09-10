import '../../../../data/models/user/user.model.dart';

abstract class UserRemoteRepository {
  Future<UserModel> getUser({required int id});
}
