import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/Login/Admin_components/background.dart';
import 'package:project_tpc/Screens/Login/Stud_components/student_details.dart';
import 'package:project_tpc/components/rounded_button.dart';
import 'package:project_tpc/components/rounded_input_field.dart';
import 'package:project_tpc/components/rounded_password_field.dart';


class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "images/aec.png",
              height: size.height * 0.20,
            ),
            SizedBox(height:20),
            Text('Assam Engineering College',
            style: TextStyle(
              fontSize: 15
            ),
            ),
            SizedBox(height:20),
            Text('Training and Placement Cell',
            style: TextStyle(
              fontSize: 20
            ),
            ),SizedBox(height:20),
            Text("Admin Portal ",
            style: TextStyle(
              fontSize: 25
            ),
            ),
            SizedBox(height:29),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: 10),
            RoundedButton(
              text: "LOGIN",
              press: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                return student_details();
              },),);
              },
            ),
            SizedBox(height: size.height * 0.03),
            
          ],
        ),
      ),
    );
  }
}
