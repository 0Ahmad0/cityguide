import 'constants/const.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cityguide',
      theme: ThemeData(
        primaryColor: primaryColor
      ),
      home: WelcomeScreen(),
    );
  }
}
