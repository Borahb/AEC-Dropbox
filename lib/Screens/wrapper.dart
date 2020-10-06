import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/Welcome/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:project_tpc/models/user.dart';
import 'student_details.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    // return home or login  widget
    
    if (user == null){
      return WelcomeScreen();
    }else{
      return StudentDetails();
    }
  }
}