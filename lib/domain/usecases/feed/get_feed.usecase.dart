import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/news/news.model.dart';
import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class GetFeedUseCase extends UseCase<NewsModel, GetFeedUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const GetFeedUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, NewsModel>> call(
    GetFeedUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.getFeed(
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

class GetFeedUseCaseParams {
  final int id;

  const GetFeedUseCaseParams({
    required this.id,
  });
}
