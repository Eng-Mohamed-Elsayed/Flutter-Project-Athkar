import 'package:flutter/material.dart';
import 'package:project_the_hope/widgets/appbar_home.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../model/content.dart';

class AppWebView extends StatelessWidget {
  const AppWebView({Key? key, required this.data}) : super(key: key);

  final ModelWeb data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarHome(
        title: data.title,
      ),
      body: WebView(
        initialUrl: data.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
