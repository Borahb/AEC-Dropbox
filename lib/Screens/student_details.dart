import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/alertdialog.dart';
import 'package:project_tpc/Screens/myprofile.dart';
import 'package:project_tpc/Services/auth.dart';
import 'package:project_tpc/components/textfield.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class StudentDetails extends StatefulWidget {
  @override
  _StudentDetailsState createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {

  final AuthService _auth = AuthService();

  final db = Firestore.instance;
  
  
  

  @override
  Widget build(BuildContext context) {

    String _name = '';
    String _rollno = '';
    String _asturoll = '';
    String _branch = '';
    String _email = '';
    String _dob = '';
    String _category = '';
    String _class10 = '';
    String _class12 = '' ;
    String _sex = '';
    String _1st = '';
    String _2nd = '';
    String _3rd = '';
    String _4th = '';
    String _5th = '';
    String _6th = '';
    String _7th = '';
    String _8th = '';
  
  

      
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Details Entry'),
        backgroundColor: Colors.blue[800],
        elevation: 10,
      ),

      drawer: Drawer(
        
        child: Container(
          decoration: BoxDecoration(
            color: Colors.indigo[900]          ),
          child: ListView(
            
            children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Student Portal', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),),
                ],
              ),
            ),

            ListTile(
            title: Text("Homepage",style: TextStyle(
              color: Colors.blue[200]
            ),),
            trailing: Icon(Icons.home,color: Colors.blue[200],), 
            onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDetails()));
            } ,          
          ),
          ListTile(
            title: Text("Edit Your Details",style: TextStyle(
              color: Colors.blue[200]
            ),),
            trailing: Icon(Icons.person,color: Colors.blue[200],), 
            onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));
            } ,          
          ),
          ListTile(
            title: Text("Upload Your Documents",style: TextStyle(
              color: Colors.blue[200]
            ),),
            trailing: Icon(Icons.info,color: Colors.blue[200],), 
            onTap:(){
           
            } ,          
          ),
            ListTile(
            title: Text("Sign Out",style: TextStyle(
              color: Colors.blue[200]
            )),
            trailing: Icon(Icons.remove_circle,color: Colors.blue[200],), 
            onTap:()async{
             await  _auth.signOut();
             // Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
            } ,          
          ),
            ],

          ),
        ),


      ),
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(

        physics: BouncingScrollPhysics(),
        child: Stack(

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                     TextRField(
                       onChanged:(value) {
                         _name = value;
                     },
                        hintText: 'Name',
                         ),
                    SizedBox(height: 5,),
                     TextRField(
                        onChanged:(value) {
                          _email = value ;

                     },
                        hintText: 'Email',
                         ),
                         SizedBox(height: 5,),
                     TextRField(
                        onChanged:(value) {
                         _branch = value;

                     },
                        hintText: 'Branch',
                         ),
                     SizedBox(height: 5,),
                     TextRField(
                        onChanged:(value) {
                         _rollno = value ;

                     },
                        hintText: 'College Roll No',
                         ),
                         SizedBox(height: 5,),
                     TextRField(
                        onChanged:(value) {
                          _asturoll = value ;

                     },
                        hintText: 'ASTU Roll No',
                         ),
                         SizedBox(height: 5,),
                     TextRField(
                        onChanged:(value) {
                          _dob = value ;

                     },
                        hintText: 'D.O.B',
                         ),
                         SizedBox(height: 5,),
                     TextRField(
                        onChanged:(value) {
                          _category = value ;

                     },
                        hintText: 'Category : Gen, SC, ST, OBC, etc.',
                         ),
                         SizedBox(height: 5,),
                     TextRField(
                        onChanged:(value) {
                         _class10 = value ;

                     },
                        hintText: 'Class 10(%)',
                         ),
                         SizedBox(height: 5,),
                     TextRField(
                        onChanged:(value) {
                          _class12 = value ;

                     },
                        hintText: 'Class 12(%)',
                         ),
                         SizedBox(height: 5,),
                     TextRField(
                         onChanged:(value) {
                         _sex = value;

                     },
                        hintText: 'Sex : M or F',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                        onChanged:(value) {
                         _1st = value ;

                     },
                        hintText: '1st Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                          _2nd = value ;

                     },
                        hintText: '2nd Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                         _3rd = value ;

                     },
                        hintText: '3rd Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                         setState(()=> _4th = value );

                     },
                        hintText: '4th Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                         _5th = value ;

                     },
                        hintText: '5th Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                         _6th = value ;

                     },
                        hintText: '6th Sem Marks',
                         ),
                          SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                         _7th = value ;

                     },
                        hintText: '7th Sem Marks',
                         ),
                         SizedBox(height: 5,),
                     TextRField(
                       onChanged:(value) {
                          _8th = value ;

                     },
                        hintText: '8th Sem Marks',
                         ),
                        SizedBox(height: 10,),
                      

                   ],
                 ),
               ),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 40,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: ()async{
                            final uid = await _auth.getUserUID();
                            await db.collection('Batch 2018-22').document(uid).setData({
                             'Name':_name,
                             'Email': _email,
                             'Branch': _branch,
                             'College Roll No' : _rollno,
                             'DOB': _dob,
                             'ASTU Roll No': _asturoll,
                             'Category': _category,
                             'Class 10%': _class10,
                             'Class 12%': _class12,
                             'Sex': _sex,
                             '1st Sem Marks': _1st,
                             '2nd Sem Marks': _2nd,
                             '3rd Sem Marks': _3rd,
                             '4th Sem Marks': _4th,
                             '5th Sem Marks': _5th,
                             '6th Sem Marks': _6th,
                             '7th Sem Marks': _7th,
                             '8th Sem Marks': _8th,
                              }) ;
                           showDialog(context: context, builder : (context) => 
                           ADialog(
                            description: 'Your Details have been sucessfully submiited.',
                           ),
                           );
                         //  Navigator.pop(context, MaterialPage(builder: (context)=> FetchData(branch:_branch)));
                        },
                        child: Center(
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montseraat'
                            ),
                          ),
                        ),
                      ),
                    
                    ),
                  ),
                ),
                SizedBox(height: 5,)
              ],
            )
          ],
        ),
      ),
    );

    
  }


}
