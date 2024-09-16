import '../../../../data/models/category/category.model.dart';
import '../../../../data/models/channel/channel.model.dart';
import '../../../../data/models/comment/comment.model.dart';
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

  Future<List<SourceModel>> getSources({required int countryId});

  Future<List<NewsModel>> getSlider({required int countryId});

  Future<List<CategoryModel>> getCategories();

  Future<List<ChannelModel>> getChannels({required int countryId});

  Future<List<NewsModel>> getExplore({required int countryId});

  Future<List<NewsModel>> getMostLikedFeed({required int countryId});

  Future<List<NewsModel>> getMostLikedFeeds({required int countryId});

  Future<void> like({required int id});

  Future<void> unlike({required int id});

  Future<void> createComment({
    required int feedId,
    required String name,
    required String email,
    required String comment,
  });

  Future<void> deleteComment({required int id});

  Future<List<CommentModel>> getComments({required int feedId});

  Future<List<NewsModel>> search({
    required int countryId,
    required String keyword,
  });
}
