import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  String homeUrl = 'https://velog.io/@jaeheon9987';
  HomeScreen({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Jay-ro'),
          centerTitle: true,
          backgroundColor: const Color(0xff63E6BE),
          actions: [
            IconButton(
                onPressed: () {
                  if (controller != null) controller!.loadUrl(homeUrl);
                },
                icon: const Icon(Icons.home))
          ],
        ),
        body: WebView(
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
          initialUrl: homeUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
