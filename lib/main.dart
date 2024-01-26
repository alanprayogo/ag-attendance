import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ag_attendance/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Remove 'const' from the constructor
  MyApp({Key? key});

  final routes = <String, WidgetBuilder>{
    DashboardPage.tag: (context) => DashboardPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beta Test',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: routes,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return DashboardPage();
    }));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.teal[900],
          ),
          Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.teal[900],
                        radius: 60.0,
                        child: ClipOval(
                          child: Image.asset('assets/logo/ag_logo.png',
                              width: 120, height: 120, fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
                const CircularProgressIndicator(),
                const Padding(
                  padding: EdgeInsets.only(top: 14.0, bottom: 16.0),
                  child: Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
