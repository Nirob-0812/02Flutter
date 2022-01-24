import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Video_Play extends StatelessWidget {
  final String? VideoUrl;
  final String? title;

  const Video_Play({Key? key, this.VideoUrl, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Map Url_Data=ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title.toString(),
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: WebView(
        initialUrl: VideoUrl.toString(),
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
