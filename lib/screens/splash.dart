import 'dart:async';
import 'package:flutter/material.dart';
import 'package:minihackpepeunion/services/authservice.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => AuthService().handleAuth(),
    )
    );
  }

  initScreen(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(backgroundColor: Colors.black,
        body: Center(
          child: Container(height: height/2,width: width/1.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/splash.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        )
    );
  }
}