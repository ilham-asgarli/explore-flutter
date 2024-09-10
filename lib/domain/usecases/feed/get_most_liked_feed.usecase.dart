import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/news/news.model.dart';
import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class GetMostLikedFeedUseCase
    extends UseCase<List<NewsModel>, GetMostLikedFeedUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const GetMostLikedFeedUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, List<NewsModel>>> call(
    GetMostLikedFeedUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.getMostLikedFeed(
        countryId: params.countryId,
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

class GetMostLikedFeedUseCaseParams {
  final int countryId;

  const GetMostLikedFeedUseCaseParams({
    required this.countryId,
  });
}
