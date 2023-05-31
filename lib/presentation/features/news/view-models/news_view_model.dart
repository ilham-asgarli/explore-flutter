import 'package:explore/core/base/view-models/base_view_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsViewModel extends BaseViewModel {
  final WebViewController controller = WebViewController()
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
      Uri.parse(
          "https://www.haberler.com/guncel/son-dakika-depremde-hayatini-kaybedenlerin-15621616-haberi/"),
    );
}
