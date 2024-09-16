import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/news/news.model.dart';
import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class SearchUseCase extends UseCase<List<NewsModel>, SearchUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const SearchUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, List<NewsModel>>> call(
    SearchUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.search(
        countryId: params.countryId,
        keyword: params.keyword,
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

class SearchUseCaseParams {
  final int countryId;
  final String keyword;

  const SearchUseCaseParams({
    required this.countryId,
    required this.keyword,
  });
}
