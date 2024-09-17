// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i497;

import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:sqflite/sqflite.dart' as _i779;

import '../../data/datasources/auth/remote/auth.remote.datasource.dart'
    as _i452;
import '../../data/datasources/feed/remote/feed.remote.datasource.dart'
    as _i730;
import '../../data/datasources/user/local/user.local.datasource.dart' as _i652;
import '../../data/datasources/user/remote/user.remote.datasource.dart'
    as _i132;
import '../../data/repositories/auth/remote/auth.remote.repository.impl.dart'
    as _i74;
import '../../data/repositories/feed/remote/feed.remote.repository.impl.dart'
    as _i374;
import '../../data/repositories/user/local/user.local.repository.impl.dart'
    as _i13;
import '../../data/repositories/user/remote/user.remote.repository.impl.dart'
    as _i499;
import '../../data/utils/interceptors/auth_interceptor.dart' as _i35;
import '../../data/utils/interceptors/error_interceptor.dart' as _i842;
import '../../domain/repositories/auth/remote/auth.remote.repository.dart'
    as _i533;
import '../../domain/repositories/feed/remote/feed.remote.repository.dart'
    as _i468;
import '../../domain/repositories/user/local/user.local.repository.dart'
    as _i1036;
import '../../domain/repositories/user/remote/user.remote.repository.dart'
    as _i910;
import '../../domain/usecases/feed/create_comment.usecase.dart' as _i173;
import '../../domain/usecases/feed/get_categories.usecase.dart' as _i1018;
import '../../domain/usecases/feed/get_channels.usecase.dart' as _i747;
import '../../domain/usecases/feed/get_comments.usecase.dart' as _i48;
import '../../domain/usecases/feed/get_explore.usecase.dart' as _i403;
import '../../domain/usecases/feed/get_feed.usecase.dart' as _i865;
import '../../domain/usecases/feed/get_feeds.usecase.dart' as _i136;
import '../../domain/usecases/feed/get_langs.usecase.dart' as _i1047;
import '../../domain/usecases/feed/get_most_liked_feed.usecase.dart' as _i361;
import '../../domain/usecases/feed/get_most_liked_feeds.usecase.dart' as _i175;
import '../../domain/usecases/feed/get_slider.usecase.dart' as _i547;
import '../../domain/usecases/feed/get_sources.usecase.dart' as _i1063;
import '../../domain/usecases/feed/like.usecase.dart' as _i196;
import '../../domain/usecases/feed/search.usecase.dart' as _i309;
import '../../domain/usecases/feed/unlike.usecase.dart' as _i219;
import '../../domain/usecases/user/get_user.usecase.dart' as _i385;
import '../../presentation/utils/config/theme/exapmle_theme.dart' as _i647;
import '../../presentation/utils/config/theme/main_theme.dart' as _i62;
import '../../presentation/utils/config/theme/theme_interface.dart' as _i236;
import '../../presentation/utils/helpers/theme/theme_helper.dart' as _i222;
import '../../presentation/utils/l10n/gen/app_localizations.dart' as _i803;
import '../../presentation/viewmodels/app/categories/categories_bloc.dart'
    as _i581;
import '../../presentation/viewmodels/app/comments/comments_bloc.dart'
    as _i1028;
import '../../presentation/viewmodels/app/explore/explore_bloc.dart' as _i721;
import '../../presentation/viewmodels/app/feeds/feeds_bloc.dart' as _i122;
import '../../presentation/viewmodels/app/langs/langs_bloc.dart' as _i516;
import '../../presentation/viewmodels/app/like/like_bloc.dart' as _i970;
import '../../presentation/viewmodels/app/make-comment/make_comment_bloc.dart'
    as _i863;
import '../../presentation/viewmodels/app/most-liked-feed/most_liked_feed_bloc.dart'
    as _i72;
import '../../presentation/viewmodels/app/most-liked-feeds/most_liked_feeds_bloc.dart'
    as _i95;
import '../../presentation/viewmodels/app/network/network_bloc.dart' as _i705;
import '../../presentation/viewmodels/app/search/search_bloc.dart' as _i236;
import '../../presentation/viewmodels/app/slider/slider_bloc.dart' as _i890;
import '../../presentation/viewmodels/app/sources/sources_bloc.dart' as _i408;
import '../../presentation/viewmodels/app/theme/theme_cubit.dart' as _i384;
import '../../presentation/viewmodels/ephemeral/choose-country/choose_country_view_model.dart'
    as _i276;
import '../../presentation/viewmodels/ephemeral/main-tab/main_tab_cubit.dart'
    as _i778;
import '../../presentation/viewmodels/ephemeral/main/main_view_cubit.dart'
    as _i328;
import '../../presentation/viewmodels/ephemeral/my-app/my_app_view_cubit.dart'
    as _i363;
import '../../presentation/viewmodels/ephemeral/search/search_view_model.dart'
    as _i915;
import '../constants/env/env.dart' as _i32;
import 'path_provider_register_module.dart' as _i433;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    final pathProviderRegisterModule = _$PathProviderRegisterModule();
    gh.singleton<_i222.ThemeHelper>(() => _i222.ThemeHelper());
    gh.lazySingleton<_i842.ErrorInterceptor>(() => _i842.ErrorInterceptor());
    gh.lazySingleton<_i581.CategoriesBloc>(() => _i581.CategoriesBloc());
    gh.lazySingleton<_i1028.CommentsBloc>(() => _i1028.CommentsBloc());
    gh.lazySingleton<_i721.ExploreBloc>(() => _i721.ExploreBloc());
    gh.lazySingleton<_i122.FeedsBloc>(() => _i122.FeedsBloc());
    gh.lazySingleton<_i516.LangsBloc>(() => _i516.LangsBloc());
    gh.lazySingleton<_i970.LikeBloc>(() => _i970.LikeBloc());
    gh.lazySingleton<_i863.MakeCommentBloc>(() => _i863.MakeCommentBloc());
    gh.lazySingleton<_i72.MostLikedFeedBloc>(() => _i72.MostLikedFeedBloc());
    gh.lazySingleton<_i95.MostLikedFeedsBloc>(() => _i95.MostLikedFeedsBloc());
    gh.lazySingleton<_i705.NetworkBloc>(
      () => _i705.NetworkBloc(),
      dispose: (i) => i.close(),
    );
    gh.lazySingleton<_i236.SearchBloc>(
      () => _i236.SearchBloc(),
      dispose: (i) => i.close(),
    );
    gh.lazySingleton<_i890.SliderBloc>(() => _i890.SliderBloc());
    gh.lazySingleton<_i408.SourcesBloc>(() => _i408.SourcesBloc());
    gh.lazySingleton<_i384.ThemeCubit>(
      () => _i384.ThemeCubit(),
      dispose: (i) => i.close(),
    );
    gh.lazySingleton<_i276.ChooseCountryViewModel>(
        () => _i276.ChooseCountryViewModel());
    gh.lazySingleton<_i328.MainViewCubit>(() => _i328.MainViewCubit());
    gh.lazySingleton<_i778.MainTabCubit>(() => _i778.MainTabCubit());
    gh.lazySingleton<_i363.MyAppViewCubit>(() => _i363.MyAppViewCubit());
    gh.lazySingleton<_i915.SearchViewModel>(() => _i915.SearchViewModel());
    gh.lazySingleton<_i32.Env>(() => registerModule.env);
    gh.lazySingleton<_i803.AppLocalizations>(() => registerModule.l10n);
    gh.lazySingleton<_i974.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => registerModule.storage);
    await gh.lazySingletonAsync<_i779.Database>(
      () => registerModule.db,
      preResolve: true,
    );
    gh.lazySingleton<_i652.UserLocalDataSource>(
        () => _i652.UserLocalDataSource(db: gh<_i779.Database>()));
    gh.lazySingletonAsync<_i497.Directory>(
      () => pathProviderRegisterModule.applicationCacheDirectory,
      instanceName: 'applicationCache',
    );
    gh.lazySingletonAsync<_i497.Directory>(
      () => pathProviderRegisterModule.applicationSupportDirectory,
      instanceName: 'applicationSupport',
    );
    gh.lazySingleton<_i236.ThemeInterface>(
      () => _i647.ExampleTheme(),
      instanceName: 'ExampleTheme',
    );
    gh.lazySingleton<_i452.AuthRemoteDataSource>(
        () => _i452.AuthRemoteDataSource(gh<_i361.Dio>()));
    gh.lazySingleton<_i730.FeedRemoteDataSource>(
        () => _i730.FeedRemoteDataSource(gh<_i361.Dio>()));
    gh.lazySingleton<_i132.UserRemoteDataSource>(
        () => _i132.UserRemoteDataSource(gh<_i361.Dio>()));
    gh.lazySingleton<_i468.FeedRemoteRepository>(() =>
        _i374.FeedRemoteRepositoryImpl(
            feedRemoteDataSource: gh<_i730.FeedRemoteDataSource>()));
    gh.lazySingletonAsync<_i497.Directory>(
      () => pathProviderRegisterModule.temporaryDirectory,
      instanceName: 'temporary',
    );
    await gh.lazySingletonAsync<_i497.Directory>(
      () => pathProviderRegisterModule.applicationDocumentsDirectory,
      instanceName: 'applicationDocuments',
      preResolve: true,
    );
    gh.lazySingleton<_i236.ThemeInterface>(
      () => _i62.MainTheme(),
      instanceName: 'MainTheme',
    );
    gh.lazySingleton<_i35.AuthInterceptor>(() => _i35.AuthInterceptor(
          dio: gh<_i361.Dio>(),
          secureStorage: gh<_i558.FlutterSecureStorage>(),
          shouldClearBeforeReset: gh<bool>(),
          authRemoteDataSource: gh<_i452.AuthRemoteDataSource>(),
        ));
    gh.lazySingleton<_i533.AuthRemoteRepository>(() =>
        _i74.AuthRemoteRepositoryImpl(
            authRemoteDataSource: gh<_i452.AuthRemoteDataSource>()));
    gh.lazySingleton<_i1036.UserLocalRepository>(() =>
        _i13.UserLocalRepositoryImpl(
            userLocalDataSource: gh<_i652.UserLocalDataSource>()));
    gh.lazySingleton<_i910.UserRemoteRepository>(() =>
        _i499.UserRemoteRepositoryImpl(
            userRemoteDataSource: gh<_i132.UserRemoteDataSource>()));
    gh.lazySingleton<_i173.CreateCommentUseCase>(() =>
        _i173.CreateCommentUseCase(
            feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i1018.GetCategoriesUseCase>(() =>
        _i1018.GetCategoriesUseCase(
            feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i747.GetChannelsUseCase>(() => _i747.GetChannelsUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i48.GetCommentsUseCase>(() => _i48.GetCommentsUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i403.GetExploreUseCase>(() => _i403.GetExploreUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i865.GetFeedUseCase>(() => _i865.GetFeedUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i136.GetFeedsUseCase>(() => _i136.GetFeedsUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i1047.GetLangsUseCase>(() => _i1047.GetLangsUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i361.GetMostLikedFeedUseCase>(() =>
        _i361.GetMostLikedFeedUseCase(
            feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i175.GetMostLikedFeedsUseCase>(() =>
        _i175.GetMostLikedFeedsUseCase(
            feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i547.GetSliderUseCase>(() => _i547.GetSliderUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i1063.GetSourcesUseCase>(() => _i1063.GetSourcesUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i196.LikeUseCase>(() => _i196.LikeUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i309.SearchUseCase>(() => _i309.SearchUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i219.UnlikeUseCase>(() => _i219.UnlikeUseCase(
        feedRemoteRepository: gh<_i468.FeedRemoteRepository>()));
    gh.lazySingleton<_i385.GetUserUseCase>(() => _i385.GetUserUseCase(
          userRemoteRepository: gh<_i910.UserRemoteRepository>(),
          userLocalRepository: gh<_i1036.UserLocalRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}

class _$PathProviderRegisterModule extends _i433.PathProviderRegisterModule {}
