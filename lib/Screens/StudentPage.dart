import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/Welcome/welcome_screen.dart';
import 'package:project_tpc/Services/auth.dart';


class StudentPage extends StatefulWidget {
  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {

  final AuthService _auth = AuthService();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StudentPage"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
              ListTile(
          title: Text("Sign Out"),
          trailing: Icon(Icons.remove_circle), 
          onTap:()async{
           await  _auth.signOut();
            Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
          } ,          
        ),
          ],

        ),


      ),
    );
  }
}