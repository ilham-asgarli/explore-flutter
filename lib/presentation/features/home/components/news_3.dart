import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../data/models/news/news.model.dart';
import '../../../utils/extensions/context_extension.dart';
import 'news_1_item.dart';

class News3 extends StatefulWidget {
  final double? height, width;
  final Axis scrollDirection;
  final List<NewsModel> news;

  const News3({
    super.key,
    this.height,
    this.width,
    this.scrollDirection = Axis.horizontal,
    required this.news,
  });

  @override
  State<News3> createState() => _News3State();
}

class _News3State extends State<News3> {
  int activeIndex = 0;
  int count = 3;
  final pageController = PageController(viewportFraction: 1.1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingNormal,
      height: widget.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: widget.news.length,
            itemBuilder: (context, index) {
              return FractionallySizedBox(
                widthFactor: 1 / pageController.viewportFraction,
                child: News1Item(
                  height: widget.height,
                  width: null,
                  fontSize: 16,
                  news: widget.news[index],
                ),
              );
            },
            onPageChanged: (value) {
              setState(() {
                activeIndex = value;
              });
            },
          ),
          Positioned(
            bottom: context.lowValue * 2.8,
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex < count ? activeIndex : count - 1,
              count: count,
              effect: const JumpingDotEffect(
                activeDotColor: Colors.white,
                dotColor: Color(0xFF707070),
                dotHeight: 5,
                dotWidth: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
