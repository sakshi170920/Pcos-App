import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:pcos_app/chat/chat_screen.dart';
import 'package:pcos_app/login_screens/login_screen.dart';
import 'package:pcos_app/login_screens/welcome_screen.dart';
import 'package:pcos_app/login_screens/registration_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        HomePage.id : (context) => HomePage(),
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
      initialRoute: WelcomeScreen.id,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

    );
  }
}

