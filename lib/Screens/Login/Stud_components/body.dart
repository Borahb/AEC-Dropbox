import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/Login/ForgetPass/forgetpassLay.dart';
import 'package:project_tpc/Screens/Login/stud_components/background.dart';
import 'package:project_tpc/Screens/loading.dart';
import 'package:project_tpc/Services/auth.dart';
import 'package:project_tpc/components/rounded_button.dart';
import 'package:project_tpc/components/rounded_input_field.dart';
import 'package:project_tpc/components/rounded_password_field.dart';
import 'package:project_tpc/sidebar/sidebar_layout.dart';




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

  RegExp regExp =new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

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
              RoundedPasswordField(
                validator:  (val) {
                  if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 18,),
                        SizedBox(width: 20,),
                        Text("Enter Password"),
                      ],
                    ),
                    ));
                  }else if (val.length < 6){
                    Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 18,),
                        SizedBox(width: 20,),
                        Text("Password too short"),
                      ],
                    ),
                    ));
                  }
                  
                },
                onChanged: (value) {
                   setState(() => _password = value);
                },
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.only(right:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetP()));
                      },
                        child: Text('Forgot Password',style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                          fontSize: 17
                        ),),

                    ),
                    
                  ],
                ),
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
                              
            if(result == null){
              setState(() {
              loading = false;
               _error = 'Could Not Sign In With Those Credentials'; 
                } );
              }else{
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SideBarLayout()));     
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
