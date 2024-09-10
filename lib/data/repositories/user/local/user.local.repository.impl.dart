import 'package:injectable/injectable.dart';

import '../../../../domain/repositories/user/local/user.local.repository.dart';
import '../../../datasources/user/local/user.local.datasource.dart';
import '../../../models/user/user.model.dart';

@LazySingleton(as: UserLocalRepository)
class UserLocalRepositoryImpl implements UserLocalRepository {
  final UserLocalDataSource userLocalDataSource;

  const UserLocalRepositoryImpl({
    required this.userLocalDataSource,
  });

  @override
  Future<UserModel> getUser({required int id}) async {
    UserModel model = await userLocalDataSource.getUser(id);
    return model;
  }
}
