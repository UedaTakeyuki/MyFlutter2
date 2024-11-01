import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}

final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
        debugPrint("Progress");
      },
      onPageStarted: (String url) {
        debugPrint("PageStarted");
      },
      onPageFinished: (String url) {
        debugPrint("PageFinished");
      },
      onHttpError: (HttpResponseError error) {
        debugPrint("HttpError");
      },
      onWebResourceError: (WebResourceError error) {
        debugPrint("WebResourceError");
        debugPrint('$error');
      },
      onNavigationRequest: (NavigationRequest request) {
        debugPrint("NavigationRequest");
        if (request.url.startsWith('https://www.youtube.com/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse('https://flutter.dev'));
