import 'package:flutter/material.dart';

import '../../../../../../utils/di/injectable.dart';
import '../../../../../components/appbar/my_sliver_app_bar.dart';
import '../../../../../utils/constants/enums/app_enum.dart';
import '../../../../../utils/extensions/context_extension.dart';
import '../../../../../utils/extensions/num_extension.dart';
import '../../../../../utils/extensions/theme_extension.dart';
import '../../../../../utils/extensions/widget_extension.dart';
import '../../../../../utils/l10n/gen/app_localizations.dart';
import '../features/my-comment-likes/my_comments_likes_view.dart';
import '../features/my-content-likes/my_content_likes_view.dart';

class MyLikesView extends StatefulWidget {
  const MyLikesView({super.key});

  @override
  State<MyLikesView> createState() => _MyLikesViewState();
}

class _MyLikesViewState extends State<MyLikesView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final Map<String, Widget> _tabItems;

  @override
  void initState() {
    _tabItems = {
      getIt<AppLocalizations>().myLikesTabNews: const MyContentLikesView(),
      getIt<AppLocalizations>().myLikesTabComment: const MyCommentsLikesView(),
    };
    _tabController = TabController(length: _tabItems.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const MySliverAppBar(
              appBarLeading: AppBarLeading.back,
            ),
            Padding(
              padding: context.paddingNormal,
              child: Row(
                children: buildTabItemList(),
              ),
            ).toSliver,
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: _tabItems.values
              .map(
                (e) => Padding(
                  padding: context.paddingNormalHorizontal,
                  child: e,
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  List<Widget> buildTabItemList() {
    Iterable<Widget> widgets = _tabItems.keys
        .toList()
        .asMap()
        .map(
          (key, value) => MapEntry(
            key,
            buildTabItem(key, value),
          ),
        )
        .values;

    return widgets.expand(
      (element) {
        if (widgets.toList().indexOf(element) < _tabItems.length - 1) {
          return [element, 10.horizontalSpace];
        }
        return [element];
      },
    ).toList();
  }

  Widget buildTabItem(int index, String text) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          _tabController.animateTo(index);
        },
        child: Ink(
          height: 50,
          decoration: BoxDecoration(
            color: context.theme.customColors.fourth,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
