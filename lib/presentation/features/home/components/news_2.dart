import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'news_2_item.dart';

class News2 extends StatelessWidget {
  final bool newsSourceClickable;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;

  const News2({
    Key? key,
    this.shrinkWrap = false,
    this.newsSourceClickable = true,
    this.physics,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: padding ?? EdgeInsets.zero,
      shrinkWrap: shrinkWrap,
      physics: physics,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemCount: 6,
      itemBuilder: (context, index) {
        return News2Item(
          key: UniqueKey(),
          newsSourceClickable: newsSourceClickable,
        );
      },
    );
  }
}
