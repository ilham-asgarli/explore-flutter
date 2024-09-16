import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/source/source.model.dart';
import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class GetSourcesUseCase
    extends UseCase<List<SourceModel>, GetSourcesUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const GetSourcesUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, List<SourceModel>>> call(
    GetSourcesUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.getSources(
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

class GetSourcesUseCaseParams {
  final int countryId;

  const GetSourcesUseCaseParams({
    required this.countryId,
  });
}
