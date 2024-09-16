import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class UnlikeUseCase extends UseCase<void, UnlikeUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const UnlikeUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, void>> call(
    UnlikeUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.unlike(
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

class UnlikeUseCaseParams {
  final int id;

  const UnlikeUseCaseParams({
    required this.id,
  });
}
