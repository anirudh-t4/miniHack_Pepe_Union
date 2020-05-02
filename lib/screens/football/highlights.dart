
import 'dart:convert';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;


class high extends StatefulWidget {
  @override
  _highState createState() => _highState();
}

class _highState extends State<high> {
  List data;
  dynamic u1;
  dynamic u2;


  Future<void> getData() async {
    http.Response response = await http.get('https://www.scorebat.com/video-api/v1/');
    List data = jsonDecode(response.body);
    setState(() {
      u1 = data[0]['title'];
      u2 = data[0]['side1']['url'];

    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('HighLights'),
      ),
      body: WebView(
        initialUrl: 'https://www.scorebat.com/embed/',
        javascriptMode: JavascriptMode.unrestricted,

      ),
    );
  }
}
