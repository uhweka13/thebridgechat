import 'package:flutter/material.dart';
import 'package:thebridgechat/userregdata/mentors/mentorswidget.dart';

class MentorsMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      body: OrientationBuilder(builder: (context, orientation){
        if(MediaQuery.of(context).size.width < 600){
          return MentorsWidget();
        }
      }),
    );
  }
}