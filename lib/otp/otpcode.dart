import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';

class OtpCode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OtpCodeState();
  }
}

class _OtpCodeState extends State<OtpCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/slider_3.png',
                    height: 150.0,
                    width: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: OTPTextField(
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 50,
                  // fieldStyle: FieldStyle.underline,
                  style: TextStyle(fontSize: 17),
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "If you haven't recieved the code click.",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            InkWell(
                              child: Text(
                                "Resend ",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.blue),
                              ),
                              onTap: () {
                                print("resend otp");
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text("You will recieve a six(6) digit code."),
              )
            ],
          ),
        ),
      ),
    );
  }
}
