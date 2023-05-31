import 'package:flutter/material.dart';

import 'fade_view.dart';

class FadeSingleChildScrollView extends StatefulWidget {
  final Widget? child;
  final Color? color;
  final Axis scrollDirection;

  const FadeSingleChildScrollView({
    Key? key,
    this.child,
    this.color,
    this.scrollDirection = Axis.vertical,
  }) : super(key: key);

  @override
  State<FadeSingleChildScrollView> createState() =>
      _FadeSingleChildScrollViewState();
}

class _FadeSingleChildScrollViewState extends State<FadeSingleChildScrollView> {
  bool start = false, end = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        NotificationListener(
          child: SingleChildScrollView(
            scrollDirection: widget.scrollDirection,
            child: widget.child,
          ),
          onNotification: (notification) {
            if (notification is ScrollUpdateNotification) {
              if (!start && notification.metrics.pixels > 0) {
                setState(() {
                  start = true;
                });
              } else if (start && notification.metrics.pixels == 0) {
                setState(() {
                  start = false;
                });
              }

              if (!end &&
                  notification.metrics.pixels <
                      notification.metrics.maxScrollExtent) {
                setState(() {
                  end = true;
                });
              } else if (end &&
                  notification.metrics.pixels ==
                      notification.metrics.maxScrollExtent) {
                setState(() {
                  end = false;
                });
              }
            }

            return true;
          },
        ),
        Visibility(
          visible: start,
          child: Positioned(
            top: 0,
            left: 0,
            right: widget.scrollDirection == Axis.vertical ? 0 : null,
            height: widget.scrollDirection == Axis.vertical ? 70 : null,
            bottom: widget.scrollDirection == Axis.horizontal ? 0 : null,
            width: widget.scrollDirection == Axis.horizontal ? 70 : null,
            child: FadeView(
              color: widget.color,
              begin: widget.scrollDirection == Axis.vertical
                  ? Alignment.bottomCenter
                  : Alignment.centerRight,
              end: widget.scrollDirection == Axis.vertical
                  ? Alignment.topCenter
                  : Alignment.centerLeft,
            ),
          ),
        ),
        Visibility(
          visible: end,
          child: Positioned(
            bottom: 0,
            right: 0,
            left: widget.scrollDirection == Axis.vertical ? 0 : null,
            height: widget.scrollDirection == Axis.vertical ? 70 : null,
            top: widget.scrollDirection == Axis.horizontal ? 0 : null,
            width: widget.scrollDirection == Axis.horizontal ? 70 : null,
            child: FadeView(
              color: widget.color,
              begin: widget.scrollDirection == Axis.vertical
                  ? Alignment.topCenter
                  : Alignment.centerLeft,
              end: widget.scrollDirection == Axis.vertical
                  ? Alignment.bottomCenter
                  : Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }
}
