import 'package:flutter/material.dart';

class IntroWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntroWidgetState();
  }
}

class _IntroWidgetState extends State<IntroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
