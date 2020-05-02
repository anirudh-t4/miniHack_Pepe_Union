import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class clu extends StatefulWidget {
  @override
  _cluState createState() => _cluState();
}

class _cluState extends State<clu> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '   Clubs'
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
                      title: Image(image: AssetImage('assets/ars.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Arsenal'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/team/arsenal-2?variable=20200405',
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
                      title: Image(image: AssetImage('assets/rma.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Real Madrid'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/team/real-madrid-26?variable=20200405',
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
                      title: Image(image: AssetImage('assets/bar.jfif'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Barcelona'
                                  )
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/team/barcelona-5?variable=20200405',
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
                      title: Image(image: AssetImage('assets/juve.jpg'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Juventus'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/team/juventus-17?variable=20200405',
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
                      title: Image(image: AssetImage('assets/bm.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Bayern Munich'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/team/bayern-munich-6?variable=20200405',
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
                      title: Image(image: AssetImage('assets/liv.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Liverpool'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/team/liverpool-18?variable=20200405',
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
                      title: Image(image: AssetImage('assets/mci.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Man City'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/team/manchester-city-209?variable=20200405',
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
                      title: Image(image: AssetImage('assets/psg.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Psg'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/team/paris-saint-germain-263?variable=20200405',
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
                      title: Image(image: AssetImage('assets/mut.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Man Utd'
                                  )
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/team/manchester-united-21?variable=20200405',
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
                      title: Image(image: AssetImage('assets/che.png'),),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Text(
                                      'Chelsea'
                                  ),
                                ),
                                body: const WebView(
                                  initialUrl: 'https://onefootball.com/en/team/chelsea-9?variable=20200405',
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