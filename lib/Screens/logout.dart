import 'package:flutter/material.dart';
import 'package:project_tpc/Services/auth.dart';
import 'package:project_tpc/bloc.navigation_bloc/navigation_bloc.dart';
import 'Welcome/welcome_screen.dart';



class LogOut extends StatefulWidget with NavigationStates {

  @override
  _LogOutState createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
   final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(23),
          child: Column(
            children: [
              Row(
              children: [
                Text('Logout',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),),
                  
              ],
            ),
            SizedBox(height: 20,),
                  RaisedButton(
                    child: Text('Sign Out', style: TextStyle(
                      color: Colors.white
                    ),),
                    color: Colors.blue[800],
                    onPressed: ()async{
                      await _auth.signOut();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
                    },

                  ),
            ],
          ),
        ),
      ),
    );
  }
}