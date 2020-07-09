import 'package:flutter/material.dart';
import 'package:thebridgechat/otp/otpcode.dart';

class Otpmain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OtpmainState();
  }
}

class _OtpmainState extends State<Otpmain>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation){
        if(MediaQuery.of(context).size.width < 600){
          return OtpCode();
        }
      }),
    );
  }
  
}
