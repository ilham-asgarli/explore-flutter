import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/extensions/widget_extension.dart';
import '../../../../../../utils/logic/constants/enums/app_enum.dart';
import '../../../../../../utils/logic/constants/locale/locale_keys.g.dart';
import '../../../../../../utils/logic/state/bloc/theme/theme_bloc.dart';
import '../../../../../components/my_sliver_app_bar.dart';
import '../features/my-comment-likes/views/my_comments_likes_view.dart';
import '../features/my-content-likes/views/my_content_likes_view.dart';

class MyLikesView extends StatefulWidget {
  const MyLikesView({Key? key}) : super(key: key);

  @override
  State<MyLikesView> createState() => _MyLikesViewState();
}

class _MyLikesViewState extends State<MyLikesView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  final _tabItems = <String, Widget>{
    LocaleKeys.myLikesTab.tr(gender: "news"): const MyContentLikesView(),
    LocaleKeys.myLikesTab.tr(gender: "comment"): const MyCommentsLikesView(),
  };

  @override
  void initState() {
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
          return [element, context.widget.horizontalSpace(10)];
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
            color: context.watch<ThemeBloc>().state.appColors.fourth,
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
