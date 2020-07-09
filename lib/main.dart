import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:thebridgechat/dashboard/dashboard.dart';
import 'package:thebridgechat/login/loginmain.dart';
import 'package:thebridgechat/screens/landing_page.dart';
import 'package:thebridgechat/userregdata/mentees/menteesmain.dart';
import 'package:thebridgechat/userregdata/mentors/mentorsmain.dart';
import 'package:thebridgechat/userregdata/regmain.dart';

import 'otp/otpmain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarDividerColor: Colors.grey,
          systemNavigationBarIconBrightness: Brightness.dark,  
        ));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splashscreen(),
        routes: <String, WidgetBuilder> {
          '/login': (BuildContext context) => LoginMain(),
          '/dashboard' : (BuildContext context) => Dashboard(),
          '/otpmain' : (BuildContext context) => Otpmain(),
          '/regmain' : (BuildContext context) => RegMain(),
          '/mentorsmain' : (BuildContext context) => MentorsMain(),
          '/menteesmain' : (BuildContext context) => MenteesMain()
  },
    );
  }
}

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => new _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new LandingPage(),
      title: new Text('Welcome In SplashScreen',
      style: new TextStyle(
        fontWeight: FontWeight.bold, 
        fontSize: 20.0
      ),),
      image: new Image.asset('assets/images/slider_3.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    );
  }
}