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
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => AuthService().handleAuth(),
    )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/emi.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        )
    );
  }
}