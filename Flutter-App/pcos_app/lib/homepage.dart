//import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pcos_app/chat/chat_screen.dart';
import 'package:pcos_app/widgets/AppDrawer.dart';

class HomePage extends StatefulWidget {
  static final String id = "HomePage";
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final widgetOptions = [
    ChatScreen(),
    Text('Add new beer'),
    Text('Favourites'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('Community')),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline), title: Text('Health Insights')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Expert Team')),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.lightBlue,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
