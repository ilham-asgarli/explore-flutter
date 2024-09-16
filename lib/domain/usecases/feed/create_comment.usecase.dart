import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class CreateCommentUseCase extends UseCase<void, CreateCommentUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const CreateCommentUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, void>> call(
    CreateCommentUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.createComment(
        feedId: params.feedId,
        comment: params.comment,
        name: params.name,
        email: params.email,
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

class CreateCommentUseCaseParams {
  final int feedId;
  final String comment;
  final String name;
  final String email;

  const CreateCommentUseCaseParams({
    required this.feedId,
    required this.comment,
    required this.name,
    required this.email,
  });
}
