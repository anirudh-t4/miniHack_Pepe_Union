
import 'dart:convert';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minihackpepeunion/screens/football/leagues.dart';
import 'package:minihackpepeunion/screens/football/scores.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

import 'clubs.dart';
import 'highlights.dart';



class fh extends StatefulWidget {
  @override
  _fhState createState() => _fhState();
}

class _fhState extends State<fh> {


  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            sco(),
            high(),
            lea(),
            clu()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Scores'),
              icon: Icon(Icons.score)
          ),
          BottomNavyBarItem(
              title: Text('Highlights'),
              icon: Icon(Icons.history)
          ),
          BottomNavyBarItem(
              title: Text('Leagues'),
              icon: Icon(Icons.art_track)
          ),
          BottomNavyBarItem(
              title: Text('Clubs'),
              icon: Icon(Icons.flag)
          ),
        ],
      ),
    );
  }
}