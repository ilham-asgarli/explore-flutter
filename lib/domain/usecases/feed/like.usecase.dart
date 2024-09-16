import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class LikeUseCase extends UseCase<void, LikeUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const LikeUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, void>> call(
    LikeUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.like(
        id: params.id,
      );
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

class LikeUseCaseParams {
  final int id;

  const LikeUseCaseParams({
    required this.id,
  });
}
