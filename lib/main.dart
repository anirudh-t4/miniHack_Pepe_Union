
import 'package:flutter/material.dart';
import 'package:minihackpepeunion/screens/football/futhome.dart';
import 'package:minihackpepeunion/screens/football/highlights.dart';
import 'package:minihackpepeunion/screens/home.dart';
import 'package:minihackpepeunion/screens/splash.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: AuthService().handleAuth(),
      //home: ha(),
      home: SplashScreen(),
      //home: fh(),
    );
  }
}