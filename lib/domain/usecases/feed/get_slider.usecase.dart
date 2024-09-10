import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/news/news.model.dart';
import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class GetSliderUseCase
    extends UseCase<List<NewsModel>, GetSliderUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const GetSliderUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, List<NewsModel>>> call(
    GetSliderUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.getSlider(
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

class GetSliderUseCaseParams {
  final int countryId;

  const GetSliderUseCaseParams({
    required this.countryId,
  });
}
