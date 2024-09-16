import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/comment/comment.model.dart';
import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class GetCommentsUseCase
    extends UseCase<List<CommentModel>, GetCommentsUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const GetCommentsUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, List<CommentModel>>> call(
    GetCommentsUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.getComments(
        feedId: params.feedId,
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

class GetCommentsUseCaseParams {
  final int feedId;

  const GetCommentsUseCaseParams({
    required this.feedId,
  });
}
