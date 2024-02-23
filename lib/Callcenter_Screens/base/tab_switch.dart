import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dashboard/screens/dashboard.dart';

class TabSwitching extends StatefulWidget {
  const TabSwitching({Key? key}) : super(key: key);

  @override
  State<TabSwitching> createState() => _TabSwitchingState();
}

class _TabSwitchingState extends State<TabSwitching> {
  late List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    tabs = [

    ];

    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return  DefaultTabController(
      length: 4,
      child: Column(
        children: <Widget>[
          Container(
            child: Material(
              color: Colors.white,
              child: TabBar(
                labelColor:Color(0xff687892) ,
                unselectedLabelColor: Color(0xff66687b),
                unselectedLabelStyle: TextStyle(
                  color: Color(0xff66687b),
                  fontSize: w/70,
                  // fontSize: 18,
                ),
                labelStyle:TextStyle(
                  color: Color(0xff687892),
                  fontSize: w/70,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700,
                ),

                tabs: [
                  Tab(text: "Dashboard",),
                  Tab(text: "Call Center",),
                  Tab(text: "Order History",),
                  Tab(text: "User Management",),


                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(

              children: [
                DashBoard(),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
