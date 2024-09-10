import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/category/category.model.dart';
import '../../../models/channel/channel.model.dart';
import '../../../models/lang/lang.model.dart';
import '../../../models/news/news.model.dart';
import '../../../models/source/source.model.dart';
import '../../../utils/constants/api/api_url_constants.dart';

part 'feed.remote.datasource.g.dart';

@LazySingleton()
@RestApi(baseUrl: ApiUrlConstants.base)
abstract class FeedRemoteDataSource {
  @factoryMethod
  factory FeedRemoteDataSource(Dio dio) = _FeedRemoteDataSource;

  @POST(ApiUrlConstants.langs)
  Future<List<LangModel>> getLangs();

  @POST(ApiUrlConstants.feeds)
  Future<List<NewsModel>> getFeeds(@Body() Map<String, dynamic> body);

  @POST(ApiUrlConstants.feed)
  Future<NewsModel> getFeed(@Body() Map<String, dynamic> body);

  @POST(ApiUrlConstants.sources)
  Future<SourceModel> getSources(@Body() Map<String, dynamic> body);

  @POST(ApiUrlConstants.slider)
  Future<List<NewsModel>> getSlider(@Body() Map<String, dynamic> body);

  @POST(ApiUrlConstants.categories)
  Future<List<CategoryModel>> getCategories();

  @POST(ApiUrlConstants.channels)
  Future<List<ChannelModel>> getChannels(@Body() Map<String, dynamic> body);

  @POST(ApiUrlConstants.explore)
  Future<List<NewsModel>> getExplore(@Body() Map<String, dynamic> body);

  @POST(ApiUrlConstants.mostLikedFeed)
  Future<List<NewsModel>> getMostLikedFeed(@Body() Map<String, dynamic> body);

  @POST(ApiUrlConstants.mostLikedFeeds)
  Future<List<NewsModel>> getMostLikedFeeds(@Body() Map<String, dynamic> body);
}
