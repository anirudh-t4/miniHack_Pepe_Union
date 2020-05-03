import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minihackpepeunion/screens/football/leagues.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

import '../home.dart';

class tran extends StatefulWidget {
  @override
  _tranState createState() => _tranState();
}

class _tranState extends State<tran> {
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
            'Team Rankings'
        ),
      ),
      body: const WebView(
        initialUrl: 'https://www.espncricinfo.com/rankings/content/page/211271.html',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
