import 'package:flutter/material.dart';
import 'package:tabs_bottom_bar/src/screens/firsttab.dart';
import 'package:tabs_bottom_bar/src/screens/secondtab.dart';
import 'package:tabs_bottom_bar/src/screens/thirdtab.dart';

class MybottomTabs extends StatefulWidget {
  @override
  _MybottomTabsState createState() => _MybottomTabsState();
}

class _MybottomTabsState extends State<MybottomTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("BottomTabs App"),
          backgroundColor: Colors.blueAccent,
        ),
        body: TabBarView(
          children: <Widget>[
            Home(),Video(),Contact()
          ],
          ),
        bottomNavigationBar: Material(
          color: Colors.blueAccent,
          child: TabBar(
            tabs: <Tab>[
              Tab(icon: Icon(Icons.alarm),),
              Tab(icon: Icon(Icons.watch_later),),
              Tab(icon: Icon(Icons.airplanemode_active),)
            ],),
        ),
        ),      
    );
  }
}