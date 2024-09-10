import '../../../../data/models/category/category.model.dart';
import '../../../../data/models/channel/channel.model.dart';
import '../../../../data/models/lang/lang.model.dart';
import '../../../../data/models/news/news.model.dart';
import '../../../../data/models/source/source.model.dart';

abstract class FeedRemoteRepository {
  Future<List<LangModel>> getLangs();

  Future<List<NewsModel>> getFeeds({
    required int countryId,
    required int categoryId,
  });

  Future<NewsModel> getFeed({required int id});

  Future<SourceModel> getSources({required int countryId});

  Future<List<NewsModel>> getSlider({required int countryId});

  Future<List<CategoryModel>> getCategories();

  Future<List<ChannelModel>> getChannels({required int countryId});

  Future<List<NewsModel>> getExplore({required int countryId});

  Future<List<NewsModel>> getMostLikedFeed({required int countryId});

  Future<List<NewsModel>> getMostLikedFeeds({required int countryId});
}
