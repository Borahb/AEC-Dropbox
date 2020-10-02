import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/Login/admin_screen.dart';
import 'package:project_tpc/Screens/Login/student_screen.dart';
import 'package:project_tpc/Screens/Welcome/components/background.dart';
import 'package:project_tpc/components/rounded_button.dart';
import 'package:project_tpc/constants.dart';

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
            Image.asset(
              "images/aec.png",
              height: size.height * 0.23,
            ),
            SizedBox(height:10),
            Text('অসম অভিযান্ত্ৰিক মহাবিদ্যালয়',
            style: TextStyle(
              fontSize: 15
            ),
            ),

            SizedBox(height:10),
            Text('Assam Engineering College', 
            style: TextStyle(
              fontSize: 20
            ),
            ),

            SizedBox(height: size.height * 0.28),
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
            RoundedButton(
              text: "ADMIN",
              color: kPrimaryLightColor,
              textColor: Colors.blue[900],
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AdminLogin();
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
