import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/repositories/feed/remote/feed.remote.repository.dart';
import '../../../datasources/feed/remote/feed.remote.datasource.dart';
import '../../../models/category/category.model.dart';
import '../../../models/channel/channel.model.dart';
import '../../../models/lang/lang.model.dart';
import '../../../models/news/news.model.dart';
import '../../../models/source/source.model.dart';
import '../../../utils/exceptions/network/custom.exception.dart';

@LazySingleton(as: FeedRemoteRepository)
class FeedRemoteRepositoryImpl implements FeedRemoteRepository {
  final FeedRemoteDataSource feedRemoteDataSource;

  const FeedRemoteRepositoryImpl({
    required this.feedRemoteDataSource,
  });

  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      List<CategoryModel> model = await feedRemoteDataSource.getCategories();
      return model;
    } on DioException catch (e) {
      throw e.error!;
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<List<ChannelModel>> getChannels({required int countryId}) async {
    try {
      List<ChannelModel> model = await feedRemoteDataSource.getChannels({
        'country_id': countryId,
      });
      return model;
    } on DioException catch (e) {
      throw e.error!;
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<NewsModel> getFeed({required int id}) async {
    try {
      NewsModel model = await feedRemoteDataSource.getFeed({
        'id': id,
      });
      return model;
    } on DioException catch (e) {
      throw e.error!;
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<List<NewsModel>> getFeeds(
      {required int countryId, required int categoryId}) async {
    try {
      List<NewsModel> model = await feedRemoteDataSource.getFeeds({
        'country_id': countryId,
        'category_id': categoryId,
      });
      return model;
    } on DioException catch (e) {
      throw e.error!;
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<List<LangModel>> getLangs() async {
    try {
      List<LangModel> model = await feedRemoteDataSource.getLangs();
      return model;
    } on DioException catch (e) {
      throw e.error!;
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<List<NewsModel>> getSlider({required int countryId}) async {
    try {
      List<NewsModel> model = await feedRemoteDataSource.getSlider({
        'country_id': countryId,
      });
      return model;
    } on DioException catch (e) {
      throw e.error!;
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<SourceModel> getSources({required int countryId}) async {
    try {
      SourceModel model = await feedRemoteDataSource.getSources({
        'country_id': countryId,
      });
      return model;
    } on DioException catch (e) {
      throw e.error!;
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<List<NewsModel>> getExplore({required int countryId}) async {
    try {
      List<NewsModel> model = await feedRemoteDataSource.getExplore({
        'country_id': countryId,
      });
      return model;
    } on DioException catch (e) {
      throw e.error!;
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<List<NewsModel>> getMostLikedFeed({required int countryId}) async {
    try {
      List<NewsModel> model = await feedRemoteDataSource.getMostLikedFeed({
        'country_id': countryId,
      });
      return model;
    } on DioException catch (e) {
      throw e.error!;
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<List<NewsModel>> getMostLikedFeeds({required int countryId}) async {
    try {
      List<NewsModel> model = await feedRemoteDataSource.getMostLikedFeeds({
        'country_id': countryId,
      });
      return model;
    } on DioException catch (e) {
      throw e.error!;
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }
}
