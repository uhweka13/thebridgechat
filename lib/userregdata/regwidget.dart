import 'package:flutter/material.dart';
import 'package:thebridgechat/userregdata/mentees/menteesmain.dart';
import 'package:thebridgechat/userregdata/mentors/mentorsmain.dart';
import 'package:thebridgechat/userregdata/parents/parentswidget.dart';

class RegWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegWidgetState();
  }
}

class _RegWidgetState extends State<RegWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 50, bottom: 20),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/slider_3.png',
                      height: 150.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Select a category that best suits you",
                  style: TextStyle(fontSize: 11),
                ),
              ),
              Container(
                width: 200,
                child: RaisedButton(
                    child: Text("Mentor"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MentorsMain()),
                      );
                    }),
              ),
              Container(
                width: 200,
                child: RaisedButton(
                    child: Text("Mentee"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenteesMain()),
                      );
                    }),
              ),
              Container(
                width: 200,
                child: RaisedButton(
                    child: Text("Parent"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ParentsWidget()),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
