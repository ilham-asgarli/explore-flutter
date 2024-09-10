import '../../../../data/models/user/user.model.dart';

abstract class UserLocalRepository {
  Future<UserModel> getUser({required int id});
}
