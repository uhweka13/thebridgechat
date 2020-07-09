import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thebridgechat/constants/constants.dart';
import 'package:thebridgechat/ui_view/slider_layout_view.dart';
import 'package:thebridgechat/widgets/custom_font.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: onBordingBody(),
    );
  }

  Widget onBordingBody() => Container(
        child: SliderLayoutView(),
      );
}