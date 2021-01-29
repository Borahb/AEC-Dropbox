import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_tpc/Services/auth.dart';
import 'package:project_tpc/components/textfield.dart';


class FetchData extends StatefulWidget {
  final String branch;
  const FetchData({ Key key, this.branch }): super(key: key);

  @override
  _FetchDataState createState() => _FetchDataState(branch: this.branch);
}

class _FetchDataState extends State<FetchData> {
String branch;
_FetchDataState({this.branch});

  final AuthService _auth = AuthService();

  Future<DocumentSnapshot> getUserInfo()async{ 
  final uid =  await _auth.getUserUID();
  return await Firestore.instance.collection(branch).document(uid).get();
  }
    
    String _1st = '' ;
    String _2nd = '' ;
    String _3rd = '' ;
    String _4th = '' ;
    String _5th = '' ;
    String _6th = '' ;
    String _7th = '' ;
    String _8th = '' ;
    String _backlog = '';
    String _internship1 = '';
    String _internship2 = '';
    String _internship3 = '';



//update 1st sem marks
  Future<bool> update1(BuildContext context)async{
    final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter your updated marks*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                         keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Enter 1st Sem Marks' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _1st = value ;
                            }
                       },
                          hintText: '1st Sem Marks',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              '1st Sem Marks':this. _1st,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
  }
//  update 2nd sem marks
Future<bool> update2(BuildContext context)async{
    final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter your updated marks*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                          keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Enter 2nd Sem Marks' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _2nd = value ;
                            }
                       },
                          hintText: '2nd Sem Marks',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              '2nd Sem Marks':this. _2nd,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
  }

// update 3rd sem Marks
Future<bool> update3(BuildContext context)async{
    final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter your updated marks*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                        keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Enter 3rd Sem Marks' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _3rd = value ;
                            }
                       },
                          hintText: '3rd Sem Marks',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              '3rd Sem Marks':this. _3rd,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
  }

  //Update  4th sem marks
Future<bool> update4(BuildContext context)async{
    final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter your updated marks*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                          keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Enter 4th Sem Marks' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _4th = value ;
                            }
                       },
                          hintText: '4th Sem Marks',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              '4th Sem Marks':this. _4th,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
  }

// update 5th sem marks
Future<bool> update5(BuildContext context)async{
    final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter your updated marks*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                          keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Enter 5th Sem Marks' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _5th = value ;
                            }
                       },
                          hintText: '5th Sem Marks',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              '5th Sem Marks':this. _5th,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
  }

//update 6th sem marks
Future<bool> update6(BuildContext context)async{
    final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter your updated marks*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                          keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Enter 6th Sem Marks' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _6th = value ;
                            }
                       },
                          hintText: '6th Sem Marks',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              '6th Sem Marks':this. _6th,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
  }
// update 7th sem marks
Future<bool> update7(BuildContext context)async{
    final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter your updated marks*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                          keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Enter 7th Sem Marks' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _7th = value ;
                            }
                       },
                          hintText: '7th Sem Marks',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              '7th Sem Marks':this. _7th,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
  }

// update 8th sem Marks

Future<bool> update8(BuildContext context)async{
    final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter your updated marks*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                         keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Enter 8th Sem Marks' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _8th = value ;
                            }
                       },
                          hintText: '8th Sem Marks',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              '8th Sem Marks':this. _8th,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
  }

//update backlogs

Future<bool> updateback(BuildContext context)async{
  final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter updated no of backlogs*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                         keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Enter no of backlogs' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _backlog = value ;
                            }
                       },
                          hintText: 'No of backlogs',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              'No of Active Backlogs':this. _backlog,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
}

// update internship 1
Future<bool> Internship1(BuildContext context)async{
  final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter Internshp 1 details*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                         keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Internship 1' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _internship1 = value ;
                            }
                       },
                          hintText: 'Internship 1',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              'Internship 1':this. _internship1,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
}

// update internship 2
Future<bool> Internship2(BuildContext context)async{
  final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter Internshp 2 details*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                         keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Internship 2' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _internship2 = value ;
                            }
                       },
                          hintText: 'Internship 2',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              'Internship 2':this. _internship2,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
}

// update internship 3
Future<bool> Internship3(BuildContext context)async{
  final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    final _formKey = GlobalKey<FormState>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return Form(
          key: _formKey,
            child: AlertDialog(
            title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
            content:SingleChildScrollView(
              child: Column(
                children: [
                        Text('Enter Internshp 3 details*', style: TextStyle(
                          fontSize: 20
                        ),),
                       TextRField(
                         keyboardinput: TextInputType.number,
                         validator: (val) => val.isEmpty ? 'Internship 3' : null,
                          onChanged:(value) {
                            if (value != null){
                              
                           this. _internship3 = value ;
                            }
                       },
                          hintText: 'Internship 3',
                           ),
                            
                ],
              ),
              
            ),
            actions : [
              FlatButton(
                child: Text('Update'),
                textColor: Colors.blue[900],
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    Navigator.of(context).pop();
                  db.collection(branch).document(uid).updateData({
                              'Internship 3':this. _internship3,
                              
                  });
                  }
                },
              ),
            ]
          ),
        );
      }
      );
}



  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        title:  Text('Personal Details', style: TextStyle(
                              fontSize: 22,
                              color: Colors.white
                            ),),
      backgroundColor: Colors.blue[800],
                            
      ),
          body: Container(
        color: Colors.white,
        child: FutureBuilder(
                future: getUserInfo(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                 if(!snapshot.hasData) return Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     
                     children: [
                       CircularProgressIndicator(
                         
                       ),
                     ],
                   ),
                 );
                   return new ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        
                        Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(18),
                                  child: Column(
                                  children: [
                        
                        
                       
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Name', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Name'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Email', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Email'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Phone number', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Phone Number'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Branch', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Branch'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Gender', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Sex'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('DOB', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['DOB'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                     SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Category', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Category'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                     SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('No of Year Gaps', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['No of Year Gaps'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                     SizedBox(height: 15,),
                                     Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Hometown', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Hometown'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                     SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Class Roll No:', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['College Roll No'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('ASTU Roll No:', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['ASTU Roll No'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('ASTU Registration No:', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['ASTU Registration No'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('10th Passing Year:', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['10th Passing Year'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Class 10 (%)', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Class 10%'] +'%', style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('12th Passing Year:', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['12th Passing Year'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Class 12%', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Class 12%']+ '%', style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Lateral Student', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Lateral Student'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Diploma Percentage, Passing Year', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data.data['Diploma Percentage, Passing Year'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                     SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Internship 1', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                Internship1(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            
                                         ) ],
                                    ),
                                    Wrap(
                                      children: [
                                        Text(snapshot.data.data['Internship 1'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Internship 2', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                Internship2(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            ),
                                      ],
                                    ),
                                    Wrap(
                                      
                                      children: [
                                        Text(snapshot.data.data['Internship 2'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                        
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Internship 3', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                Internship3(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            
                                        )],
                                    ),
                                   Wrap(                                     
                                   children: [
                                        Text(snapshot.data.data['Internship 3'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                        
                                      ],
                                    ),

                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('No of Active Backlogs', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(snapshot.data.data['No of Active Backlogs'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                         GestureDetector(
                              onTap: (){
                                updateback(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            )
                                      ],
                                    ),
                                     SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('1st Sem Marks', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(snapshot.data.data['1st Sem Marks'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                update1(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            )
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('2nd Sem Marks', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(snapshot.data.data['2nd Sem Marks'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                update2(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            )
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('3rd Sem Marks', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(snapshot.data.data['3rd Sem Marks'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                update3(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            )
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('4th Sem Marks', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(snapshot.data.data['4th Sem Marks'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                update4(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            )
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('5th Sem Marks', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(snapshot.data.data['5th Sem Marks'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                update5(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            )
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('6th Sem Marks', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(snapshot.data.data['6th Sem Marks'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                update6(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            )
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('7th Sem Marks', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(snapshot.data.data['7th Sem Marks'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                update7(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            )
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('8th Sem Marks', style: TextStyle(
                                          fontSize:17 ,
                                          color: Colors.black45
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(snapshot.data.data['8th Sem Marks'], style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87
                                        ),),
                                        GestureDetector(
                              onTap: (){
                                update8(context);
                              },
                              child: Text('EDIT', style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 17
                              ),),
                            )
                                      ],
                                    ),
                                    
                                  ],

                          ),
                                ),
                        ),
                
                
                      ],
                    );
                  },
                  );
                }
        ),
      ),
    );
               

            }
             
  }