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
 // final coll = ;
  final uid =  await _auth.getUserUID();
  return await Firestore.instance.collection(branch).document(uid).get();
  }
    
    String _1st = '';
    String _2nd = '';
    String _3rd = '';
    String _4th = '';
    String _5th = '';
    String _6th = '';
    String _7th = '';
    String _8th = '';


  Future<bool> update(BuildContext context)async{
    final uid =  await _auth.getUserUID();
    final db = Firestore.instance;
    
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Edit Data', style: TextStyle(fontSize: 15,),),
          content:SingleChildScrollView(
            child: Column(
              children: [
                     TextRField(
                        onChanged:(value) {
                          if (value != null){
                            
                         this._1st = value ;
                          }
                     },
                        hintText: '1st Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                         if (value != null){
                            
                         this._2nd = value ;
                          }

                     },
                        hintText: '2nd Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                       if (value != null){
                            
                         this._3rd = value ;
                          }

                     },
                        hintText: '3rd Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                          if (value != null){
                            
                         this._4th = value ;
                          }

                     },
                        hintText: '4th Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                        if (value != null){
                            
                         this._5th = value ;
                          }

                     },
                        hintText: '5th Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                        if (value != null){
                            
                         this._6th = value ;
                          }

                     },
                        hintText: '6th Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                        if (value != null){
                            
                         this._7th = value ;
                          }

                     },
                        hintText: '7th Sem Marks',
                         ),
                         SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                         if (value != null){
                            
                         this._8th = value ;
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
                Navigator.of(context).pop();
                db.collection(branch).document(uid).updateData({
                            '1st Sem Marks':this. _1st,
                            '2nd Sem Marks':this. _2nd,
                            '3rd Sem Marks':this. _3rd,
                            '4th Sem Marks':this._4th,
                            '5th Sem Marks':this. _5th,
                            '6th Sem Marks':this. _6th,
                            '7th Sem Marks':this. _7th,
                            '8th Sem Marks':this. _8th,
                });
              },
            ),
          ]
        );
      }
      );
  }






  @override
  Widget build(BuildContext context) {
    
    

    return Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                        children: [
                          Text('Personal Details', style: TextStyle(
                            fontSize: 22,
                            color: Colors.grey[800]
                          ),),
                          
                          GestureDetector(
                            onTap: (){
                              update(context);
                            },
                            child: Text('EDIT', style: TextStyle(
                              color: Colors.blue[700],
                              fontSize: 20
                            ),),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
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
                                      Text('Sex', style: TextStyle(
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
                                      Text('1st Sem Marks', style: TextStyle(
                                        fontSize:17 ,
                                        color: Colors.black45
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data.data['1st Sem Marks'], style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87
                                      ),),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data.data['2nd Sem Marks'], style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87
                                      ),),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data.data['3rd Sem Marks'], style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87
                                      ),),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data.data['4th Sem Marks'], style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87
                                      ),),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data.data['5th Sem Marks'], style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87
                                      ),),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data.data['6th Sem Marks'], style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87
                                      ),),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data.data['7th Sem Marks'], style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87
                                      ),),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data.data['8th Sem Marks'], style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87
                                      ),),
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
    );
               

            }
             
  }