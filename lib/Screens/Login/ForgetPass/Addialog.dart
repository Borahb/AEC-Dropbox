import 'package:flutter/material.dart';
import 'package:project_tpc/Screens/Login/student_screen.dart';



class Adialog extends StatelessWidget {

final String  description;


Adialog({
  
  this.description,
  
  
});

  @override
  Widget build(BuildContext context){
    return Dialog(
      shape : RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),

    );
  }
  dialogContent(BuildContext context){
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8.0,
                offset: Offset(0.0,10.0)
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [              
                Text(description,style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentLogin()));
                  },
                  child: Text('Go to Login Page',style: TextStyle(
                  color: Colors.blue[900],
                  
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                )),
                ),
              ],
            ),
          ),
        ),
        
      ],
    );
  }


}