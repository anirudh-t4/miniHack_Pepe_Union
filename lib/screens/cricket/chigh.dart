import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../home.dart';


class chigh extends StatefulWidget {
  @override
  _chighState createState() => _chighState();
}

class _chighState extends State<chigh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ListTile(
          title: Icon(Icons.home),
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return ha();}), ModalRoute.withName('/'));
          },

        ),
        title: Text(
            '  Videos'
        ),
      ),
      body: const WebView(
        initialUrl: 'https://www.espncricinfo.com/ci/content/video_audio/index.html',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
