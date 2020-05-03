import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minihackpepeunion/screens/football/leagues.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

import '../home.dart';

class pran extends StatefulWidget {
  @override
  _pranState createState() => _pranState();
}

class _pranState extends State<pran> {
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
            'Player Rankings'
        ),
      ),
      body: const WebView(
        initialUrl: 'https://www.espncricinfo.com/rankings/content/page/211270.html',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
