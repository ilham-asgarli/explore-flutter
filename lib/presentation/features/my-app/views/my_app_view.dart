import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../../utils/di/injectable.dart';
import '../../../utils/config/router/config_router.dart';
import '../../../utils/constants/app/app_constants.dart';
import '../../../utils/constants/enums/app_theme_enum.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/l10n/gen/app_localizations.dart';
import '../../../viewmodels/app/categories/categories_bloc.dart';
import '../../../viewmodels/app/explore/explore_bloc.dart';
import '../../../viewmodels/app/feeds/feeds_bloc.dart';
import '../../../viewmodels/app/langs/langs_bloc.dart';
import '../../../viewmodels/app/most-liked-feed/most_liked_feed_bloc.dart';
import '../../../viewmodels/app/most-liked-feeds/most_liked_feeds_bloc.dart';
import '../../../viewmodels/app/network/network_bloc.dart';
import '../../../viewmodels/app/slider/slider_bloc.dart';
import '../../../viewmodels/app/theme/theme_cubit.dart';
import '../../../viewmodels/ephemeral/main-tab/main_tab_cubit.dart';
import '../../../viewmodels/ephemeral/my-app/my_app_view_cubit.dart';

class MyAppView extends StatelessWidget {
  final MyAppViewCubit viewModel;

  const MyAppView({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => getIt(),
        ),
        BlocProvider<NetworkBloc>(
          lazy: false,
          create: (_) => getIt(),
        ),
        BlocProvider<MainTabCubit>(
          create: (_) => getIt(),
        ),
        BlocProvider<LangsBloc>(
          create: (_) => getIt(),
        ),
        BlocProvider<FeedsBloc>(
          create: (_) => getIt(),
        ),
        BlocProvider<CategoriesBloc>(
          lazy: false,
          create: (_) => getIt(),
        ),
        BlocProvider<SliderBloc>(
          lazy: false,
          create: (_) => getIt(),
        ),
        BlocProvider<ExploreBloc>(
          lazy: false,
          create: (_) => getIt(),
        ),
        BlocProvider<MostLikedFeedBloc>(
          lazy: false,
          create: (_) => getIt(),
        ),
        BlocProvider<MostLikedFeedsBloc>(
          lazy: false,
          create: (_) => getIt(),
        ),
      ],
      child: DevicePreview(
        enabled: false, //kDebugMode
        builder: (context) => KeyboardVisibilityProvider(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: kDebugMode ? const Locale("tr", "TR") : null,
            theme: viewModel.themeHelper
                .getCustomTheme(AppTheme.main)
                .getTheme(ThemeMode.light),
            darkTheme: viewModel.themeHelper
                .getCustomTheme(AppTheme.example)
                .getTheme(ThemeMode.dark),
            themeMode: context.watch<ThemeCubit>().state.themeMode,
            scaffoldMessengerKey: AppConstants.scaffoldMessengerKey,
            navigatorKey: AppConstants.navigatorKey,
            onGenerateRoute: ConfigRouter.instance.generateRoute,
            initialRoute: viewModel.getInitialRoute(),
            builder: (context, child) {
              viewModel.injectContext(context);
              return MediaQuery(
                data: context.mediaQuery.copyWith(
                  textScaler: TextScaler.linear(
                    context.textScaleFactor(baseWidth: 414),
                  ),
                ),
                child: child!,
              );
            },
          ),
        ),
      ),
    );
  }
}
