import 'package:flutter/material.dart';

import 'football/futhome.dart';

class ha extends StatefulWidget {
  @override
  _haState createState() => _haState();
}

class _haState extends State<ha> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: <Widget>[
              InkWell(onTap: (){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return fh();}), ModalRoute.withName('/'));
      },
                child: Container(
                  height: height/2.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/foot.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),SizedBox(height: 20,),
              Container(
                height: height/2.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/cric.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
      )
    );
  }
}
