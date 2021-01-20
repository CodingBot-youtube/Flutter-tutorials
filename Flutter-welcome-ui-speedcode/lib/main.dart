import 'package:flutter/material.dart';
import 'package:signup_ui/welcome.dart';
import 'package:signup_ui/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'welcome',
      routes: {
        'welcome': (context)=> Welcome(),
        'login': (context)=> Signup(),
      },
    );
  }
}

