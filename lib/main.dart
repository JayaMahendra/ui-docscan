import 'package:docscan/login.dart';
import 'package:docscan/splash.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        home: Splash());
  }
}
