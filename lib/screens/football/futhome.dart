
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minihackpepeunion/screens/football/leagues.dart';
import 'package:minihackpepeunion/screens/football/scores.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

import 'clubs.dart';
import 'highlights.dart';
import 'package:theme_provider/theme_provider.dart';



class fh extends StatefulWidget {
  @override
  _fhState createState() => _fhState();
}

class _fhState extends State<fh> {


  int _currentIndex = 0;
  final List<Widget> _children = [
    ThemeConsumer(child: sco()),
    ThemeConsumer(child: high()),
    ThemeConsumer(child: lea()),
    ThemeConsumer(child: clu()),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.score,color: Colors.blue,),
            title: Text('Scores',style: TextStyle(color: Colors.blue),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history,color: Colors.blue,),
            title: Text('Highlights',style: TextStyle(color: Colors.blue),),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.art_track,color: Colors.blue,),
              title: Text('Leagues',style: TextStyle(color: Colors.blue),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.flag,color: Colors.blue,),
              title: Text('Clubs',style: TextStyle(color: Colors.blue),)
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}