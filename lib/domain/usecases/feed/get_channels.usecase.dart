import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/channel/channel.model.dart';
import '../../../data/utils/exceptions/data.exception.dart';
import '../../../data/utils/exceptions/network/socket.exception.dart';
import '../../repositories/feed/remote/feed.remote.repository.dart';
import '../../utils/base/usecase.dart';

@LazySingleton()
class GetChannelsUseCase
    extends UseCase<List<ChannelModel>, GetChannelsUseCaseParams> {
  final FeedRemoteRepository feedRemoteRepository;

  const GetChannelsUseCase({
    required this.feedRemoteRepository,
  });

  @override
  Future<Either<DataException, List<ChannelModel>>> call(
    GetChannelsUseCaseParams params,
  ) async {
    try {
      var response = await feedRemoteRepository.getChannels(
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

class GetChannelsUseCaseParams {
  final int countryId;

  const GetChannelsUseCaseParams({
    required this.countryId,
  });
}
