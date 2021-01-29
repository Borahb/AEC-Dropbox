import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/Login/ForgetPass/Addialog.dart';
import 'package:project_tpc/Screens/Login/Stud_components/background.dart';
import 'package:project_tpc/Services/auth.dart';
import 'package:project_tpc/components/rounded_button.dart';
import 'package:project_tpc/components/rounded_input_field.dart';
import 'package:progress_dialog/progress_dialog.dart';


class ForgetPasbody extends StatefulWidget {
  @override
  _ForgetPasbodyState createState() => _ForgetPasbodyState();
}

class _ForgetPasbodyState extends State<ForgetPasbody> {
  
  String _email = '';
  final AuthService _auth = AuthService();
  RegExp regExp =new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  final _formkey = GlobalKey<FormState>();
  String _error = '';
  ProgressDialog pr;

 @override
  Widget build(BuildContext context) {

    pr = new ProgressDialog(context, showLogs: true);
    pr.style(message: 'Please wait...');
    Size size = MediaQuery.of(context).size;
    return Background(
      
      child: SingleChildScrollView(
        child: Form(
            key: _formkey,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.18),
              
              Text('Reset Password',
              style: TextStyle(
                fontSize: 25
              ),
              ),
              SizedBox(height:20),
              
              RoundedInputField(
                keyboardinput: TextInputType.emailAddress,
                validator: (val) {
                  if(!regExp.hasMatch(val)){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 18,),
                        SizedBox(width: 20,),
                        Text("Enter Vaild Email",),
                      ],
                    ),
                    ));
                  }else if(val.isEmpty){
                    Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 18,),
                        SizedBox(width: 20,),
                        Text("Enter Email"),
                      ],
                    ),
                    ));
                  }
                  
                },
                hintText: "Your Email",
                onChanged: (value) {
                     setState(() => _email = value);

                },
              ),
              
              SizedBox(height: 5),
              Text(_error,style: TextStyle(
                color: Colors.red,
                fontSize: 15,
              ), ),
              SizedBox(height: 10),
              RoundedButton(
                text: "Submit",
                press: ()async{
                  if (_formkey.currentState.validate()){

                await _auth.forgetpassword(_email);
                 pr.show();
            Future.delayed(Duration(seconds: 3)).then((value){
            pr.hide().whenComplete(() {
            showDialog(context: context, builder : (context) => 
            Adialog(
            description: 'A password reset link has been sent to '+ _email,
                )
            );
              });
            }
            );
                
                
                   
                 
                }
                }
                ),         
                
              
              SizedBox(height: size.height * 0.03),
              
            ],
          ),
        ),
      ),
    );
  }
}