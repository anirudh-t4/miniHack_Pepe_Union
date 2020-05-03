import 'package:flutter/material.dart';
import 'package:minihackpepeunion/screens/loginpage.dart';
import 'package:minihackpepeunion/services/sign_in.dart';
import 'cricket/crichome.dart';
import 'football/futhome.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';


class ha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      loadThemeOnInit: true,
      themes: <AppTheme>[
        AppTheme.light(),
        AppTheme.dark(),
      ],
      child: MaterialApp(
        home: ThemeConsumer(
          child: HomePage(),
        ),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          title: FlatButton(
            color: Colors.transparent,
            child: Text('Choose Your Sport',style: TextStyle(fontSize: width/22),),
            onLongPress: (){
              Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      body: const WebView(
                        initialUrl: 'https://playsnake.org/',
                        javascriptMode: JavascriptMode.unrestricted,
                      ),
                    );

                  }
              ));
            },
          ),
          actions: <Widget>[
            FlatButton(
              color: Colors.transparent,
              child: Icon(Icons.brightness_6),
              onPressed: ThemeProvider.controllerOf(context).nextTheme,
            ),
            FlatButton(
              color: Colors.transparent,
              child: Icon(Icons.exit_to_app),
              onPressed: () {
                signOutGoogle();
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return ThemeConsumer(child: LoginPage());}), ModalRoute.withName('/'));
              },
            ),
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(onTap: (){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return ThemeConsumer(child: fh());}), ModalRoute.withName('/'));
            },
              child: Container(
                height: height/2.5,width: width/1.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/fh.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: height/30,),
            InkWell(onTap: (){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return ThemeConsumer(child: ch());}), ModalRoute.withName('/'));
            },
              child: Container(
                height: height/2.5,width: width/1.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/ch.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
