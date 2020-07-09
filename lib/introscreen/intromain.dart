import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thebridgechat/introscreen/introwidget.dart';

class IntroMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _IntroMainState();
  }
}

class _IntroMainState extends State<IntroMain>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation){
        if(MediaQuery.of(context).size.width < 600){
          return IntroWidget();
        }
      }),
    );
  }
}