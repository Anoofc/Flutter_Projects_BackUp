import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Object'),
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var stated;
  // ignore: missing_return
  Future<String> sendRequest() async {
    http.Response response = await http.get(
      Uri.encodeFull(
          'http://188.166.206.43/jysThIx8bex5yVdcA3XDt7kP-65niH_R/update/V$stated?value=1'),
    );
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF243F4D),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                padding: EdgeInsets.all(2.0),
                icon: const Icon(Icons.info),
                iconSize: 35.0,
                color: new Color(0xFF243F4D),
                tooltip: 'About Us',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AboutUs()),
                  );
                }),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.asset('assets/window.png'),
            ),

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80.0,
                      vertical: 10.0,
                    ),
                    child: ButtonTheme(
                      height: 70.0,
                      child: FlatButton(
                          padding: EdgeInsets.fromLTRB(8.0, 14.0, 8.0, 8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(
                              width: 2.0,
                              color: Color(0xFFE3F5FF),
                            ),
                          ),
                          child: Text(
                            'OPEN',
                            style: TextStyle(
                              color: Color(0xFFE3F5FF),
                              fontSize: 25.0,
                            ),
                          ),
                          onPressed: () {
                            stated = '1';
                            sendRequest();
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 80.0,
                    ),
                    child: ButtonTheme(
                      height: 70.0,
                      child: FlatButton(
                          padding: EdgeInsets.fromLTRB(8.0, 14.0, 8.0, 8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(
                              width: 2.0,
                              color: Color(0xFFE3F5FF),
                            ),
                          ),
                          child: Text(
                            'CLOSE',
                            style: TextStyle(
                              color: Color(0xFFE3F5FF),
                              fontSize: 25.0,
                            ),
                          ),
                          onPressed: () {
                            stated = '2';
                            sendRequest();
                          }),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF243F4D),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios,
                  color: Color(0xFFE3F5FF),
                ),
                onPressed: () { Navigator.pop(context); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("About Us",
          style: TextStyle(
              color: Color(0xFFE3F5FF),
          ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 220,
                  height: 220,
                  child: FlatButton(
                    onPressed: () {
                      UrlLauncher.launch('https://www.instagram.com/pi_bots');
                    },
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Pi BOTS MakerHub',
                  style: TextStyle(
                    color: Color(0xFFE3F5FF),
                    fontSize: 30.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 50.0),
                FlatButton(
                  onPressed: () {
                    UrlLauncher.launch('tel:+919400701088');
                  },
                  child: Card(
                    color: Color(0xFFE3F5FF),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.phone,
                            size: 24.0,
                            color: Color(0xFF243F4D),
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            '+91 9400 7010 88',
                            style: TextStyle(
                              color: Color(0xFF243F4D),
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    UrlLauncher.launch('mailto:pibotsmakerhub@gmail.com');
                  },
                  child: Card(
                    color: Color(0xFFE3F5FF),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.email,
                            size: 24.0,
                            color: Color(0xFF243F4D),
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'pibotsmakerhub@gmail.com',
                            style: TextStyle(
                              color: Color(0xFF243F4D),
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    UrlLauncher.launch(
                        'https://www.youtube.com/channel/UCZ-dC4oqOWyN2mt3Ig8gh1Q');
                  },
                  child: Card(
                    color: Color(0xFFE3F5FF),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.language,
                            size: 24.0,
                            color: Color(0xFF243F4D),
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'pibots555.github.com',
                            style: TextStyle(
                              color: Color(0xFF243F4D),
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 22.0,
                    color: Color(0xFFE3F5FF),
                  ),
                  tooltip: 'Back',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
