import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(icon: Icon(Icons.chat)),
    Tab(icon: Icon(Icons.group)),
    Tab(icon: Icon(Icons.settings)),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Bridge Mentor"),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(controller: _tabController,
          // children: myTabs.map((Tab tab) {
          //   // final String label = tab.text.toLowerCase();
          //   // return Center(
          //   //   child: Text(
          //   //     'This is the  tab',
          //   //     style: const TextStyle(fontSize: 36),
          //   //   ),
          //   // );
          // }).toList(),
          children: [
//--------------------------------------------------------
//                   tab one
//--------------------------------------------------------

            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(),
                      ),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 5),
                                    child: Text("Active"),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.only(right: 10, top: 5),
                                      child: Icon(Icons.cancel)),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      children: <Widget>[
                                        ClipOval(
                                          child: Image.asset(
                                            'assets/images/profilepix.png',
                                            height: 40.0,
                                            width: 40.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          "data",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontStyle: FontStyle.italic),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 5,
                            top: 7.5,
                            left: 7.5,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/profilepix.png',
                                height: 45.0,
                                width: 45.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              //----------------users name from database
                              left: 55,
                              top: 10,
                              child: Text(
                                "Users name",
                                style: TextStyle(
                                    fontSize: 15, fontStyle: FontStyle.normal),
                              )),
                          Positioned(
                              right: 10,
                              top: 10,
                              child: Text(
                                "Feb 12",
                                style: TextStyle(fontSize: 12),
                              )),
                          Positioned(
                              //---------------latest messages
                              left: 55,
                              bottom: 10,
                              child: Text(
                                "Latest message",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.italic),
                              ))
                        ],
                      ),
                    ),
                    onTap: () {
                      //-------------------chat section ontap
                      print("to chat section");
                    },
                  ),
                  Container(
                    height: 0.5,
                    color: Colors.grey[200],
                  )
                ],
              ),
            ),

//------------------------------------------------------
//                 tab 2
//-----------------------------------------------------

            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text("Groups"),
                              ),
                              Expanded(child: Container()),
                              Container(
                                child: Text("data"),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

//-----------------------------------------------------
//                 tab 3
//-----------------------------------------------------

            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/profilepix.png',
                              height: 60.0,
                              width: 60.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "User Name",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                  ),
                  InkWell(
                    //--------------------account settings
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.settings,
                              size: 35,
                              color: Colors.blue,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Account Settings",
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      print("account settings");
                    },
                  ),
                  InkWell(
                    //---------------------------report a problem
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.error,
                              size: 35,
                              color: Colors.blue,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Report a Problem",
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      print("report");
                    },
                  ),
                  InkWell(
                    //----------------------------Help
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child:
                                Icon(Icons.help, size: 35, color: Colors.blue),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Help",
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      print("help");
                    },
                  ),
                  InkWell(
                    //-------------------------Privacy & terms
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(Icons.error_outline,
                                size: 35, color: Colors.blue),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Privacy & Term",
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      print("account settings");
                    },
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
