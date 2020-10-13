import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/wrapper.dart';
import 'package:project_tpc/Services/auth.dart';
import 'package:project_tpc/models/user.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(TPC());
}

class TPC extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
          value: AuthService().user,
          child: MaterialApp(
        title: "My AEC",
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
