import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/Login/student_screen.dart';
import 'package:project_tpc/Screens/Welcome/components/background.dart';
import 'package:project_tpc/components/rounded_button.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.15),
            Image.asset('images/aec.png',
            height: size.height * 0.25),
            SizedBox(height:10),
            Text('অসম অভিযান্ত্ৰিক মহাবিদ্যালয়',
            style: TextStyle(
              fontSize: 15
            ),
            ),
            SizedBox(height:10),
            Text('The T&P Cell', 
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            ),
             SizedBox(height:10),
            Text('Scripting  Success  Stories', 
            style: TextStyle(
              fontSize: 19,
              fontStyle: FontStyle.italic
            ),
            ),
            
            SizedBox(height: size.height * 0.25),
            Text('Created by', 
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w400
            ),
            ),
            SizedBox(height:10,width: 10, ),
            Text('TPC of Batch 2020-21', 
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic
            ),
            ),

             SizedBox(height:10,width: 10, ),
            RoundedButton(
              text: "STUDENT",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StudentLogin();
                    },
                  ),
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
