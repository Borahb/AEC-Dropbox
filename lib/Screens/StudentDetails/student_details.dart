import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_tpc/Screens/StudentDetails/alertdialog.dart';
import 'package:project_tpc/Services/auth.dart';
import 'package:project_tpc/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:project_tpc/components/rounded_button.dart';
import 'package:project_tpc/components/textfield.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:progress_dialog/progress_dialog.dart';



class StudentDetails extends StatefulWidget with NavigationStates{
  @override
  _StudentDetailsState createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {


  ProgressDialog pr;
  final AuthService _auth = AuthService();
  final db = Firestore.instance;
  final _formKey = GlobalKey<FormState>();


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

List<String> _category =<String> [
'UR',
'ST(P) Quota',
'ST(H) Quota',
'OBC Quota',
'OBC NCL Quota',
'SC Quota',
'CGE Quota',
'Ex-Tea Garden Quota',
'Tea Garden Quota',
'Freedom Fighter Quota',
'NCC Quota',
'NSS Quota',
'PMSS Quota',
'SPORTS Quota',
'Differently Abled Quota',
'Retired Defence Quota',
'EWS'
]; 

List<String> _gender =<String> [
'Male',
'Female', 
'Others',
];


RegExp regExp =new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  String branch ;
  String category ;
  String gen ;
  String _name = '';
  String _rollno = '';
  String _asturoll = '';   
  String _email = '';
  String _dob = ''; 
  String _class10 = '';
  String _class12 = '' ;
  String _1st = ''; 
  String _2nd = ''; 
  String _3rd = '';
  String _4th = ''; 
  String _5th = ""; 
  String _6th =" " ; 
  String _7th = ""; 
  String _8th =""; 
  String _hometown = '';
  String _backlogs = '';
  String _internship1 = '';
  String _internship2 = '';
  String _internship3 = '';
  String _yeargaps = '';
  String _asturegis = '';
  String _year10 = '';
  String _year12 = '';
  String _phnno = '';
  String diplom = '';
  String diplomapercentage = 'NA';

  @override
  Widget build(BuildContext context) {
    
     

    pr = new ProgressDialog(context, showLogs: true);
    pr.style(message: 'Please wait...');

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left:28, top: 18, right:10),
            child: SingleChildScrollView(

            physics: BouncingScrollPhysics(),
            child: Stack(

              children: [
                Form(
                  key: _formKey,
                    child: Column(

                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
              
              children: [
                Text('Student Details Entry ',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),),
                
              ],
            ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text('Enter your details*',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 18,
                          color: Color(0xff0C2551),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                    children: [
                      Text('Name',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter your name"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                      _name = value;
                    });
                  
                },
                  hintText: 'Name',
                    ),
              SizedBox(height: 5,),
              Row(
                    children: [
                      Text('Email',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  keyboardinput: TextInputType.emailAddress,
                  validator:  (val) {
                      if(!regExp.hasMatch(val)){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter Vaild Email",),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                        _email = value ;
                    });                               
                },
                  hintText: 'Email',
                    ),

                    SizedBox(height: 5,),
              Row(
                    children: [
                      Text('Phone number',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  keyboardinput: TextInputType.number,
                  validator:  (val) {
                      if(val.length < 10){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter valid phone number",),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                        _phnno = value ;
                    });                               
                },
                  hintText: 'Phone number',
                    ),
                    SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('Branch',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: EdgeInsets.only(left : 16, right:16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(15),),
                  child: DropdownButtonFormField(
                        validator: (val)=> val == null ? 'Select your branch' : null,
                        hint: Text('Select Your Branch'),
                        dropdownColor:Colors.white,
                        elevation: 5,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 30,
                        isExpanded: true,
                        value: branch,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22   ),
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
                Row(
                    children: [
                      Text('Class Roll No',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                  TextRField(
                    keyboardinput: TextInputType.number,
                    validator:  (val) {
                      if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter class roll no"),
                      ],
                    ),
                    ));
                  }
                    },
                  onChanged:(value) {
                  setState(() {
                      _rollno = value ;
                  });

                },
                  hintText: 'Class Roll No',
                    ),
                    SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('ASTU Roll No',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  keyboardinput: TextInputType.number,
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter astu roll no"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                      _asturoll = value ;
                    });

                },
                  hintText: 'ASTU Roll No',
                    ),
                    SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('ASTU Registration No',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  keyboardinput: TextInputType.number,
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter astu registration number"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                      _asturegis = value ;
                    });

                },
                  hintText: 'ASTU Registration No',
                    ),
                    SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('DOB',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter dob"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                      _dob = value ;
                    });

                },
                  hintText: 'DD/MM/YYYY',
                    ),
                
                    SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('Gender',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: EdgeInsets.only(left : 16, right:16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(15),),
                    child: DropdownButtonFormField(
                          validator: (val)=> val == null ? 'Select gender' : null,
                          hint: Text('Select'),
                          dropdownColor:Colors.white,
                          elevation: 5,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 30,
                          isExpanded: true,
                          value: gen,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22   ),
                          items: _gender.map((value)=> DropdownMenuItem(
                            child: Text(value),
                              value: value,

                          )).toList(),
                            onChanged: (selectedgen){
                            setState(() {
                              this.gen = selectedgen;
                            });        
                            
                            }
                        ),
                          ),
                ),
                
              SizedBox(height: 5,),
            Row(
              children: [
                Text('Category',
                style: TextStyle(
                  fontSize: 19
                )
                ),
              ],
            ),
              SizedBox(height: 5,),
              
              Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(left : 16, right:16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(15),),
              child: DropdownButtonFormField(
                validator: (val)=> val == null ? 'Select your category' : null,
                    hint: Text('Select'),
                    dropdownColor:Colors.white,
                    elevation: 5,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 30,
                    isExpanded: true,
                    value: category,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22   ),
                    items: _category.map((value)=> DropdownMenuItem(
                      child: Text(value),
                        value: value,

                    )).toList(),
                      onChanged: (selectedcat){
                      setState(() {
                        this.category = selectedcat;
                      });        
                      
                      }
                  ),
                    ),
          ),
                  Row(
                    children: [
                      Text('No of Year Gaps',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                    keyboardinput: TextInputType.number,
                    validator:  (val){
                      if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter no of year gaps"),
                      ],
                    ),
                    ));
                  }
                    },
                  onChanged:(value) {
                    setState(() {
                      _yeargaps = value ;
                    });

                },
                  hintText: 'No of Year Gaps',
                    ),
                SizedBox(height: 5,),
                  Row(
                    children: [
                      Text('Hometown',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                    validator:  (val) {
                      if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter hometown"),
                      ],
                    ),
                    ));
                  }
                    },
                  onChanged:(value) {
                    setState(() {
                      _hometown = value ;
                    });

                },
                  hintText: 'Hometown',
                    ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text('10th Passing Year',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                    keyboardinput: TextInputType.number,
                    validator:  (val) {
                      if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter 10the passing year"),
                      ],
                    ),
                    ));
                  }
                    },
                  onChanged:(value) {
                    setState(() {
                      _year10 = value ;
                    });

                },
                  hintText: '10th Passing Year',
                    ),
                    Row(
                    children: [
                      Text('Class 10(%)',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  keyboardinput: TextInputType.number,
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter class 10 %"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                  setState(() {
                      _class10 = value ;
                  });

                },
                  hintText: 'Class 10(%)',
                    ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text('12th Passing Year',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                    keyboardinput: TextInputType.number,
                    validator:  (val) {
                      if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter 12th Passing Year"),
                      ],
                    ),
                    ));
                  }
                    },
                  onChanged:(value) {
                    setState(() {
                      _year12 = value ;
                    });

                },
                  hintText: '12th Passing Year',
                    ),
                SizedBox(height: 5,),
                
                    SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('Class 12(%)',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  keyboardinput: TextInputType.number,
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter class 12 %"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                      _class12 = value ;
                    });

                },
                  hintText: 'Class 12(%)',
                    ),
                 SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('Are you a lateral student ?',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                    keyboardinput: TextInputType.name,
                    validator:  (val) {
                      if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Select Answer"),
                      ],
                    ),
                    ));
                  }
                    },
                  onChanged:(value) {
                    setState(() {
                      diplom = value ;
                    });

                },
                  hintText: 'Yes or No',
                  ),
                SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('If yes*\nDiploma percentage, Passing Year',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                    keyboardinput: TextInputType.number,
                  validator:  (val) {
                    if(val.isEmpty){
                 Scaffold.of(context).showSnackBar(
                 SnackBar(
                  content: Row(
                    children: [
                      Image.asset('images/errori.jpg',scale: 15,),
                      SizedBox(width: 20,),
                      Text("Select Answer"),
                    ],
                  ),
                  ));
                }
                  },
                  onChanged:(value) {
                    setState(() {
                      diplomapercentage = value ;
                    });

                },
                  hintText: 'Eg: 20XX, 87% or write NA if not lateral',
                  ),
                
                SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('No of Active Backlogs',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                    keyboardinput: TextInputType.number,
                    validator:  (val) {
                      if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter no of active backlogs"),
                      ],
                    ),
                    ));
                  }
                    },
                  onChanged:(value) {
                    setState(() {
                      _backlogs = value ;
                    });

                },
                  hintText: 'No of Active Backlogs',
                  ),
              SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('Internship 1',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                    validator:  (val) {
                      if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter internshp 1 details"),
                      ],
                    ),
                    ));
                  }
                    },
                  onChanged:(value) {
                    setState(() {
                      _internship1 = value ;
                    });

                },
                  hintText: 'Internship 1',
                    ),
                    SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('Internship 2',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter internshp 2 details"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                      _internship2 = value ;
                    });

                },
                  hintText: 'Internship 2',
                    ),
                    SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('Internship 3',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter NA if not available"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                        _internship3 = value ;
                    });

                },
                  hintText: 'Internship 3 or NA if not available',
                    ),                       
                SizedBox(height: 5,),
                Row(
                    children: [
                      Text('1st Sem Marks',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),   
                TextRField(
                  keyboardinput: TextInputType.number,
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter NA if not available"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                  setState(() {
                      _1st = value ;
                  });

                },
                  hintText: '1st Sem Marks or NA if not available',
                    ),
                    SizedBox(height: 5,),
                Row(
                    children: [
                      Text('2nd Sem Marks',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  keyboardinput: TextInputType.number,
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter NA if not available"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                      _2nd = value ;
                    });

                },
                  hintText: '2nd Sem Marks or NA if not available',
                    ),
                    SizedBox(height: 5,),
              Row(
                    children: [
                      Text('3rd Sem Marks',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  keyboardinput: TextInputType.number,
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter NA if not available"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                  setState(() {
                      _3rd = value ;
                  });

                },
                  hintText: '3rd Sem Marks or NA if not available',
                    ),
                    SizedBox(height: 5,),
              Row(
                    children: [
                      Text('4th Sem Marks',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  keyboardinput: TextInputType.number,
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter NA if not available"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState((){ _4th = value; });

                },
                  hintText: '4th Sem Marks or NA if not available',
                    ),
                    SizedBox(height: 5,),
              Row(
                    children: [
                      Text('5th Sem Marks',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  validator:  (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter NA if not available"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                    setState(() {
                      _5th = value ;
                    });

                },
                  hintText: '5th Sem Marks or NA if not available',
                    ),
                    SizedBox(height: 5,),
                    Row(
                    children: [
                      Text('6th Sem Marks',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  validator: (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter NA if not available"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                  setState(() {
                      _6th = value ;
                  });

                },
                  hintText: '6th Sem Marks or NA if not available',
                    ),
                    SizedBox(height: 5,),
              Row(
                    children: [
                      Text('7th Sem Marks',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  validator: (val) {
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter NA if not available"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {
                  setState(() {
                      _7th = value ;
                  });

                },
                  hintText: '7th Sem Marks or NA if not available',
                    ),
                    SizedBox(height: 5,),
              Row(
                    children: [
                      Text('8th Sem Marks',
                      style: TextStyle(
                        fontSize: 19
                      )
                      ),
                    ],
                  ),
                TextRField(
                  validator: (val){
                    if(val.isEmpty){
                   Scaffold.of(context).showSnackBar(
                   SnackBar(
                    content: Row(
                      children: [
                        Image.asset('images/errori.jpg',scale: 15,),
                        SizedBox(width: 20,),
                        Text("Enter NA if not available"),
                      ],
                    ),
                    ));
                  }
                  },
                  onChanged:(value) {                    
                      if (value != null){
                        _8th = value ;
                      }                                        
                },
                  hintText: '8th Sem Marks or NA if not available',
                    ),
                  SizedBox(height: 10,),

                ],
            ),
          ),
          SizedBox(height: 29.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
      RoundedButton(
        text: 'Submit',
        press: ()async{
          if (_formKey.currentState.validate()){
            final uid = await _auth.getUserUID();
            await db.collection(branch).document(uid).setData({
              'Name':_name,
              'Email': _email,
              'Phone Number': _phnno,
              'Branch': branch,
              'College Roll No' : _rollno,
              'DOB': _dob,
              'ASTU Roll No': _asturoll,
              'ASTU Registration No': _asturegis,
              'Category': category,
              'No of Year Gaps': _yeargaps,
              'Hometown':_hometown,
              '10th Passing Year':_year10 ,
              '12th Passing Year':_year12,
              'Class 10%': _class10,
              'Class 12%': _class12,
              'Sex': gen,
              'Lateral Student':diplom,
              'Diploma Percentage, Passing Year':diplomapercentage,
              'No of Active Backlogs' : _backlogs,
              'Internship 1' : _internship1,
              'Internship 2' : _internship2,
              'Internship 3' : _internship3,
              '1st Sem Marks': _1st,
              '2nd Sem Marks': _2nd,
              '3rd Sem Marks': _3rd,
              '4th Sem Marks': _4th,
              '5th Sem Marks': _5th,
              '6th Sem Marks': _6th,
              '7th Sem Marks': _7th,
              '8th Sem Marks': _8th,
              }) ;
            
            pr.show(); 
            Future.delayed(Duration(seconds: 3)).then((value){
            pr.hide().whenComplete(() {
            showDialog(context: context, builder : (context) => 
            ADialog(
            description: 'Your details have been sucessfully submiited.',
            ),);
              });
            });
                  
                  
          }
          
        },
      ),
                SizedBox(height: 15.0),
            ],
          ),
                    
                    ],
                  ),
                )
              ],
            ),
        ),
          ),
      ),
    );

    
  }


}
