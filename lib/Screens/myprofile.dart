import 'package:flutter/material.dart';
import 'package:project_tpc/Services/auth.dart';
import 'package:project_tpc/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:project_tpc/components/rounded_button.dart';
import 'FetchData/fetchdata.dart';
import 'Welcome/welcome_screen.dart';




class MyProfile extends StatefulWidget with NavigationStates{

  @override
  _MyProfileState createState() => _MyProfileState();
}


class _MyProfileState extends State<MyProfile> {

List<String> _branchname =<String> [
'MECHA 2018-22',
'CIVIL 2018-22', 
'ETE 2018-22',
'INSTRU 2018-22',
'CSE 2018-22',
'ELECTRICAL 2018-22',
'CHEM 2018-22',
'IPE 2018-22'
];



var branch;
final AuthService _auth = AuthService();
final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
    
    body: SafeArea(

        child: Container(
           margin: EdgeInsets.only(left:22, top: 18, right:10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Profile',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),),
                GestureDetector(
                child: Text('Logout', style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ),
                  ),
                onTap: ()async{
                    await _auth.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
                },
                ),
              ],
            ),
              SizedBox(height: 70,),
              Text('Select Your Branch', style: TextStyle(
                fontSize: 25
              ),),
              Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: EdgeInsets.only(left : 16, right:16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: DropdownButtonFormField(
                      
                      validator: (val)=> val == null ? 'Select your branch' : null
                      ,
                      hint: Text('Select Your Branch'),
                      dropdownColor:Colors.grey[200],
                      elevation: 5,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      value: branch,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20                          ),
                        items: _branchname.map((value)=> DropdownMenuItem(
                          child: Text(value),
                          value: value,

                        )).toList(),
                        onChanged: (selectedbranch){
                        setState(() {
                          this.branch = selectedbranch;
                        });        
                                            
                
                        }
                      ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              RoundedButton(
                color: Colors.blue[900],
                text: 'Go',
                press: (){
                  if(_formkey.currentState.validate()){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> FetchData(branch:branch)));
                }
                },
              ),



                    
            ]
          ),
        ),
    )
    );
    
    
  }
}







