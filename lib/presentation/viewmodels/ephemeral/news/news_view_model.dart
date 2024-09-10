import 'package:webview_flutter/webview_flutter.dart';

import '../../../../data/models/news/news.model.dart';

class NewsViewModel {
  final NewsModel news;
  late final WebViewController controller;

  NewsViewModel({
    required this.news,
  }) {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
        Uri.parse(news.newsUrl ?? news.thumbnail),
      );
  }
}
