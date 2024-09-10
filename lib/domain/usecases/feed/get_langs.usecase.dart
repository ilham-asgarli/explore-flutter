import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/lang/lang.model.dart';
import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/no_params.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class GetLangsUseCase extends UseCase<List<LangModel>, NoParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const GetLangsUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, List<LangModel>>> call(
    NoParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.getLangs();
      return right(response);
    } on SocketException catch (e) {
      /*try {
        var response = await commentLocalRepository.getAllForUser();
        return right(response);
      } on LocalException catch (e) {
        return left(e);
      }*/
      return left(e);
    } on DataException catch (e) {
      return left(e);
    }
  }
}
