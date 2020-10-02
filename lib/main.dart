import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/wrapper.dart';
import 'Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(TPC());
}

class TPC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Database',
      home:  WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
