import 'package:flutter/material.dart';

import '../../../../data/models/news/news.model.dart';
import '../../../utils/extensions/context_extension.dart';
import '../../../utils/extensions/num_extension.dart';
import 'news_1_item.dart';

class News1 extends StatelessWidget {
  final double? height;
  final double? width;
  final bool newsSourceClickable;
  final bool shrinkWrap;
  final Axis scrollDirection;
  final EdgeInsetsGeometry? padding;
  final List<NewsModel> news;

  const News1({
    super.key,
    this.height,
    this.width,
    required this.scrollDirection,
    this.shrinkWrap = false,
    this.newsSourceClickable = true,
    this.padding,
    this.news = const [],
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: scrollDirection == Axis.horizontal ? height : null,
      child: ListView.separated(
        padding: padding ??
            (scrollDirection == Axis.horizontal
                ? context.paddingNormal
                : EdgeInsets.zero),
        scrollDirection: scrollDirection,
        physics: scrollDirection == Axis.vertical
            ? const NeverScrollableScrollPhysics()
            : null,
        shrinkWrap: shrinkWrap,
        itemCount: news.length,
        itemBuilder: (context, index) {
          return News1Item(
            width: width ??
                (scrollDirection == Axis.vertical
                    ? double.infinity
                    : context.width - context.normalValue * 2),
            height: height,
            news: news[index],
          );
        },
        separatorBuilder: (context, index) {
          return scrollDirection == Axis.horizontal
              ? 20.horizontalSpace
              : 20.verticalSpace;
        },
      ),
    );
  }
}
