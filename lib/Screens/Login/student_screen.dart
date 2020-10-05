import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/Login/Stud_components/body.dart';

class StudentLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),

      ),
    );
  }
}
