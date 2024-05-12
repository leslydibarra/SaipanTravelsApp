
import 'package:flutter/material.dart';
import 'package:saipan/screens/welcome_screen.dart'; // Import the SystemUiMode

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFEDF2F6),
      ),
      home: WelcomeScreen(),
    );
  }
}


