import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/news/news.model.dart';
import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class GetFeedsUseCase extends UseCase<List<NewsModel>, GetFeedsUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const GetFeedsUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, List<NewsModel>>> call(
    GetFeedsUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.getFeeds(
        countryId: params.countryId,
        categoryId: params.categoryId,
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

class GetFeedsUseCaseParams {
  final int countryId;
  final int categoryId;

  const GetFeedsUseCaseParams({
    required this.countryId,
    required this.categoryId,
  });
}
