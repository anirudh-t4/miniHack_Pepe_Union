import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../home.dart';


class csco extends StatefulWidget {
  @override
  _cscoState createState() => _cscoState();
}

class _cscoState extends State<csco> {
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
            '   Live Scores'
        ),
      ),
      body: const WebView(
        initialUrl: 'https://www.espncricinfo.com/scores',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}


