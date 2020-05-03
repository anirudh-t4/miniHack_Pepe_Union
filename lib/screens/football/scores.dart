
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minihackpepeunion/screens/football/leagues.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

import '../home.dart';
import 'clubs.dart';
import 'highlights.dart';


class sco extends StatefulWidget {
  @override
  _scoState createState() => _scoState();
}

class _scoState extends State<sco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: ListTile(
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
        initialUrl: 'https://www.scorebat.com/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}


