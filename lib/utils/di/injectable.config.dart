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
import '../../data/datasources/user/local/user.local.datasource.dart' as _i652;
import '../../data/datasources/user/remote/user.remote.datasource.dart'
    as _i132;
import '../../data/repositories/auth/remote/auth.remote.repository.impl.dart'
    as _i74;
import '../../data/repositories/user/local/user.local.repository.impl.dart'
    as _i13;
import '../../data/repositories/user/remote/user.remote.repository.impl.dart'
    as _i499;
import '../../domain/repositories/auth/remote/auth.remote.repository.dart'
    as _i533;
import '../../domain/repositories/user/local/user.local.repository.dart'
    as _i1036;
import '../../domain/repositories/user/remote/user.remote.repository.dart'
    as _i910;
import '../../domain/usecases/user/get_user.usecase.dart' as _i385;
import '../../presentation/features/my-app/state/bloc/network/network_bloc.dart'
    as _i580;
import '../../presentation/features/my-app/state/cubit/theme/theme_cubit.dart'
    as _i56;
import '../../presentation/features/my-app/view-models/my_app_view_model.dart'
    as _i608;
import '../../presentation/utils/config/theme/exapmle_theme.dart' as _i647;
import '../../presentation/utils/config/theme/main_theme.dart' as _i62;
import '../../presentation/utils/config/theme/theme_interface.dart' as _i236;
import '../../presentation/utils/helpers/theme/theme_helper.dart' as _i222;
import '../../presentation/utils/l10n/gen/app_localizations.dart' as _i803;
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
    gh.factory<_i608.MyAppViewModel>(() => _i608.MyAppViewModel());
    gh.singleton<_i222.ThemeHelper>(() => _i222.ThemeHelper());
    gh.lazySingleton<_i580.NetworkBloc>(
      () => _i580.NetworkBloc(),
      dispose: (i) => i.close(),
    );
    gh.lazySingleton<_i56.ThemeCubit>(
      () => _i56.ThemeCubit(),
      dispose: (i) => i.close(),
    );
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
    gh.lazySingleton<_i132.UserRemoteDataSource>(
        () => _i132.UserRemoteDataSource(gh<_i361.Dio>()));
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
    gh.lazySingleton<_i533.AuthRemoteRepository>(() =>
        _i74.AuthRemoteRepositoryImpl(
            authRemoteDataSource: gh<_i452.AuthRemoteDataSource>()));
    gh.lazySingleton<_i1036.UserLocalRepository>(() =>
        _i13.UserLocalRepositoryImpl(
            userLocalDataSource: gh<_i652.UserLocalDataSource>()));
    gh.lazySingleton<_i910.UserRemoteRepository>(() =>
        _i499.UserRemoteRepositoryImpl(
            userRemoteDataSource: gh<_i132.UserRemoteDataSource>()));
    gh.lazySingleton<_i385.GetUserUseCase>(() => _i385.GetUserUseCase(
          userRemoteRepository: gh<_i910.UserRemoteRepository>(),
          userLocalRepository: gh<_i1036.UserLocalRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}

class _$PathProviderRegisterModule extends _i433.PathProviderRegisterModule {}
