import 'package:flutter/material.dart';
import 'package:thebridgechat/userregdata/mentees/menteeswidget.dart';

class MenteesMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      body: OrientationBuilder(builder: (context, orientation){
        if(MediaQuery.of(context).size.width < 600){
          return MenteesWidget();
        }
      }),
    );
  }
}