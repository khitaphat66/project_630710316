import 'package:flutter/material.dart';
import 'package:project_630710316/screens/welcome_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black87
      ),

      home: WelcomeScreen(),
    );
  }
}

