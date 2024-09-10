import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/appbar/my_sliver_app_bar.dart';
import '../../../utils/constants/enums/app_enum.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/widget_extension.dart';
import '../../../viewmodels/app/feeds/feeds_bloc.dart';
import '../../home/components/news_2.dart';

class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppBar(
            appBarLeading: AppBarLeading.back,
          ),
          if (context.watch<FeedsBloc>().state.state == BlocState.success)
            News2(
              padding: context.paddingNormal,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              news: context.watch<FeedsBloc>().state.data ?? [],
            ).toSliver,
          if (context.watch<FeedsBloc>().state.state != BlocState.success)
            const SliverFillRemaining(
              child: SizedBox(
                height: 25,
                width: 25,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
