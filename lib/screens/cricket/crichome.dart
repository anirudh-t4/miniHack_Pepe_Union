import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minihackpepeunion/screens/cricket/prank.dart';
import 'package:minihackpepeunion/screens/cricket/trank.dart';
import 'package:minihackpepeunion/screens/football/highlights.dart';

import 'chigh.dart';
import 'cscores.dart';
import 'package:theme_provider/theme_provider.dart';

class ch extends StatefulWidget {
  @override
  _chState createState() => _chState();
}

class _chState extends State<ch> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ThemeConsumer(child: csco()),
    ThemeConsumer(child: chigh()),
    ThemeConsumer(child: tran()),
    ThemeConsumer(child: pran()),
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
            icon: Icon(Icons.video_library,color: Colors.blue,),
            title: Text('Videos',style: TextStyle(color: Colors.blue),),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up,color: Colors.blue,),
              title: Text('Team Rankings',style: TextStyle(color: Colors.blue),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.blue,),
              title: Text('Player Rankings',style: TextStyle(color: Colors.blue),)
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