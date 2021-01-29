import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/wrapper.dart';
import 'package:project_tpc/Services/auth.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';


void main() {
  runApp(TPC());
}

class TPC extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child:  MaterialApp( 
            title: "AEC Dropbox",
            debugShowCheckedModeBanner: false,
            home: Wrapper(),
          )
      
    );
  }
}
