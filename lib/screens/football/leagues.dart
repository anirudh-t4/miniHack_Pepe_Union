import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class lea extends StatefulWidget {
  @override
  _leaState createState() => _leaState();
}

class _leaState extends State<lea> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '   Leagues'
        ),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(height: height/4,width: width/2.2,
                  child: Card(
                    child: ListTile(
                      title: Image(image: AssetImage('assets/epl.jpg'),height: height/4,width: width/2.2,),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Premier League'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/competition/premier-league-9?variable=20200405',
                                  javascriptMode: JavascriptMode.unrestricted,
                                ),
                              );

                            }
                        ));
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(height: height/4,width: width/2.2,
                  child: Card(
                    child: ListTile(
                      title: Image(image: AssetImage('assets/laliga.png'),height: height/4,width: width/2.2,),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'La Liga'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/competition/laliga-10?variable=20200405',
                                  javascriptMode: JavascriptMode.unrestricted,
                                ),
                              );

                            }
                        ));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(height: height/4,width: width/2.2,
                  child: Card(
                    child: ListTile(
                      title: Image(image: AssetImage('assets/ligueo.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Ligue 1'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/competition/ligue-1-23?variable=20200405',
                                  javascriptMode: JavascriptMode.unrestricted,
                                ),
                              );

                            }
                        ));
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(height: height/4,width: width/2.2,
                  child: Card(
                    child: ListTile(
                      title: Image(image: AssetImage('assets/seriea.jfif'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Serie A'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/competition/serie-a-13?variable=20200405',
                                  javascriptMode: JavascriptMode.unrestricted,
                                ),
                              );

                            }
                        ));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(height: height/4,width: width/2.2,
                  child: Card(
                    child: ListTile(
                      title: Image(image: AssetImage('assets/bundesliga.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Bundesliga'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/competition/bundesliga-1?variable=20200405',
                                  javascriptMode: JavascriptMode.unrestricted,
                                ),
                              );

                            }
                        ));
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(height: height/4,width: width/2.2,
                  child: Card(
                    child: ListTile(
                      title: Image(image: AssetImage('assets/ucl.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Uefa Champions League'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/competition/champions-league-5?variable=20200405',
                                  javascriptMode: JavascriptMode.unrestricted,
                                ),
                              );

                            }
                        ));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(height: height/4,width: width/2.2,
                  child: Card(
                    child: ListTile(
                      title: Image(image: AssetImage('assets/uel.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Uefa Europa League'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/competition/europa-league-7?variable=20200405',
                                  javascriptMode: JavascriptMode.unrestricted,
                                ),
                              );

                            }
                        ));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
