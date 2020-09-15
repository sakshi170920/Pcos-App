import 'package:pcos_app/features/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pcos_app/features/health_insights.dart';
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
    BlogSection(),
    ChatScreen(),
    Text('Favourites'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PCOS Virago'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline), title: Text('Health Insights')),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('Virago Community')),
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
