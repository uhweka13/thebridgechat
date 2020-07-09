import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thebridgechat/login/loginwidget.dart';

class LoginMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _LoginMainState();
  }
}

class _LoginMainState extends State<LoginMain>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation){
        if(MediaQuery.of(context).size.width < 600){
          return LoginWidget();
        }
      }),
    );
  }
}