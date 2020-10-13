import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/Login/stud_components/background.dart';
import 'package:project_tpc/Screens/loading.dart';
import 'package:project_tpc/Services/auth.dart';
import 'package:project_tpc/components/rounded_button.dart';
import 'package:project_tpc/components/rounded_input_field.dart';
import 'package:project_tpc/components/rounded_password_field.dart';



class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {


  bool loading = false;
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
    String  _email = '';
    String _password = '';
    String _error = '';


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return loading ? Loading():Background(
      
      child: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              Text("Student's Portal ",
              style: TextStyle(
                fontSize: 25
              ),
              ),
              SizedBox(height:29),
              RoundedInputField(
                keyboardinput: TextInputType.emailAddress,
                validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                hintText: "Your Email",
                onChanged: (value) {
                     setState(() => _email = value);

                },
              ),
              RoundedPasswordField(
                validator:  (val) => val.length < 6 ? 'Enter a Password with atleast 6 characters' : null,
                onChanged: (value) {
                   setState(() => _password = value);
                },
              ),
              SizedBox(height: 5),
              Text(_error,style: TextStyle(
                color: Colors.red,
                fontSize: 15,
              ), ),
              SizedBox(height: 10),
              RoundedButton(
                text: "LOGIN",
                press: ()async{
                  if (_formKey.currentState.validate()){
                          setState(() {
                            loading = true;
                          });
                          dynamic result = await _auth.signIn(_email,_password);
                     //   Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDetails()));        
                              if(result == null){
                                setState(() {
                                loading = false;
                        _error = 'Could Not Sign In With Those Credentials'; 
                                 } );
                                     }
                                   }
                },
              ),
              SizedBox(height: size.height * 0.03),
              
            ],
          ),
        ),
      ),
    );
  }
}
