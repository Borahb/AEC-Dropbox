import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/student_details.dart';
import 'package:project_tpc/Services/auth.dart';
import 'FetchData/fetchdata.dart';




class MyProfile extends StatefulWidget {

  @override
  _MyProfileState createState() => _MyProfileState();
}


class _MyProfileState extends State<MyProfile> {

List<String> _branchname =<String> [
'MECHA 2018-22',
'CIVIL 2018-22', 
'ETE 2018-22',
'INSTRU 2018-22',
];



static var _priorities = ['High', 'Low'];

var branch;
final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
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
    
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(left : 16, right:16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(15)
              ),
              child: DropdownButton(
                          hint: Text('Select Your Branch'),
                          dropdownColor:Colors.grey,
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
                            print(branch);           
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> FetchData(branch:branch)));
                             }
                        ),
            ),
          ),




                
        ]
      )
    
    )
    );
    
    
  }
}







