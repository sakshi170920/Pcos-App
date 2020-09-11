import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:pcos_app/features/chat_screen.dart';
import 'package:pcos_app/login_screens/login_screen.dart';
import 'package:pcos_app/login_screens/welcome_screen.dart';
import 'package:pcos_app/login_screens/registration_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final _auth = FirebaseAuth.instance;
  final user = _auth.currentUser();
  final String initialRoute = (user == null) ? WelcomeScreen.id : HomePage.id;

  runApp(MyApp(initialRoute: initialRoute,));
}

class MyApp extends StatelessWidget {
  final String initialRoute;
  MyApp({@required this.initialRoute});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        HomePage.id : (context) => HomePage(),
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
      initialRoute: initialRoute,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

    );
  }
}

