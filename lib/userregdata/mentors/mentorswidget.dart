import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jiffy/jiffy.dart';

class MentorsWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MentorsWidgetState();
  }
}

class _MentorsWidgetState extends State<MentorsWidget> {
  DateTime _dateTime;
  String dropdownValue;
  String dropdownValueGender;

  var txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mentors Registration"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/slider_3.png',
                    height: 150.0,
                    width: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Form(
                child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person, color: Colors.black,),
                      hintText: 'Enter your full name',
                      labelText: 'Name *',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.work, color: Colors.black),
                      hintText: 'Enter your Profession',
                      labelText: 'Profession *',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.school, color: Colors.black),
                      hintText: 'School Attended',
                      labelText: 'School Attended *',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.album, color: Colors.black),
                      hintText: 'Life Ambition',
                      labelText: 'Life Ambition *',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: InkWell(
                    onTap: () {
                      // _selectDate();   // Call Function that has showDatePicker()
                      FocusScope.of(context).requestFocus(new FocusNode());
                      showDatePicker(
                              context: context,
                              initialDate: _dateTime == null
                                  ? DateTime.now()
                                  : _dateTime,
                              firstDate: DateTime(1920),
                              lastDate: DateTime(2021))
                          .then((date) => {
                                setState(() {
                                  _dateTime = date;
                                  txt.text =
                                      Jiffy(_dateTime).format('MMMM do yyyy');
                                })
                              });
                    },
                    child: IgnorePointer(
                      child: new TextFormField(
                        controller: txt,
                        // initialValue: _dateTime.toIso8601String(),
                        decoration: new InputDecoration(
                            icon: Icon(Icons.date_range, color: Colors.black),
                            hintText: 'Date of birth'),
                        // validator: validateDob,
                        onSaved: (String val) {},
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    onTap: () {
                      print(Jiffy(_dateTime).format('MMMM do yyyy'));
                    },
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lightbulb_outline, color: Colors.black),
                      hintText: 'Life Philosophy',
                      labelText: 'Life Philosophy *',
                    ),
                    onSaved: (String value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                  height: 40,
                  width: double.infinity,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          bottom: 0,
                          child: Container(
                            child: Icon(Icons.business, color: Colors.black),
                          )),
                      Positioned(
                          top: 0,
                          right: 0,
                          left: 40,
                          child: DropdownButton<String>(
                            hint: Text("Select your Religion"),
                            value: dropdownValue,
                            // icon: Icon(Icons.arrow_drop_down_circle),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: Colors.black),
                            underline: Container(
                              height: 1.3,
                              color: Colors.grey,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                              FocusScope.of(context)
                                  .requestFocus(new FocusNode());
                            },
                            items: <String>['Christian', 'Islam']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                  height: 40,
                  width: double.infinity,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          bottom: 0,
                          child: Container(
                            child: Icon(Icons.person),
                          )),
                      Positioned(
                          top: 0,
                          right: 0,
                          left: 40,
                          child: DropdownButton<String>(
                            hint: Text("Select your Gender"),
                            value: dropdownValueGender,
                            // icon: Icon(Icons.arrow_drop_down_circle),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: Colors.black),
                            underline: Container(
                              height: 1.3,
                              color: Colors.grey,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValueGender = newValue;
                              });
                              FocusScope.of(context)
                                  .requestFocus(new FocusNode());
                            },
                            items: <String>['Male', 'Female']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
                  width: double.infinity,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blue)),
                      child: Text("Register"),
                      onPressed: () {}),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
