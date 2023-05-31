import 'package:explore/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'news_1_item.dart';

class News3 extends StatefulWidget {
  final double? height, width;
  final Axis scrollDirection;

  const News3({
    Key? key,
    this.height,
    this.width,
    this.scrollDirection = Axis.horizontal,
  }) : super(key: key);

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
            itemCount: 10,
            itemBuilder: (context, index) {
              return FractionallySizedBox(
                widthFactor: 1 / pageController.viewportFraction,
                child: News1Item(
                  height: widget.height,
                  width: null,
                  fontSize: 16,
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
              effect: JumpingDotEffect(
                activeDotColor: Colors.white,
                dotColor: HexColor("#707070"),
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
