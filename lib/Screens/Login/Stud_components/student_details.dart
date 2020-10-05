import 'package:flutter/material.dart';

class student_details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(

        physics: BouncingScrollPhysics(),
        child: Stack(

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [



                Padding(
                  padding: const EdgeInsets.only(left:120.0 , top :34),
                  child: Text('STUDENT',
                    style: TextStyle(
                      fontFamily: 'Cardo',
                      fontSize: 35,
                      color: Color(0xff0C2551),
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline,
                    ),
                  ),


                ),
               Container(
                 padding: EdgeInsets.only(top: 2,right:4 ,bottom:8 ),
                 child: Column(
                   children: <Widget>[
                     Text('ENTER YOUR DETAILS',
                       style: TextStyle(
                         fontFamily: 'Cardo',
                         fontSize: 25,
                         color: Color(0xff0C2551),
                         fontWeight: FontWeight.w900,
                         decoration: TextDecoration.underline,
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                         labelText: 'NAME',
                         labelStyle: TextStyle(
                           fontFamily: 'Montserrat',
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                           color: Colors.black,

                         ),
                         focusedBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.green),
                         )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: 'Email',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,

                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: 'Class Roll No.',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: 'D.O.B',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),

                     TextField(
                       decoration: InputDecoration(
                           labelText: 'Category',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: 'ASTU Roll',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: 'Class 10(%)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: 'Class 12(%)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: 'Sex',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: '1stSem(Marks)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: '2nd Sem(Marks)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: '3rd Sem(Marks)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: '4th Sem(Marks)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: '5th Sem(Marks)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: '6th Sem(Marks)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: '7th Sem(Marks)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: '8th Sem(Marks)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: 'TOTAL(Marks)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),
                     TextField(
                       decoration: InputDecoration(
                           labelText: 'AVERAGE(Marks/5650)',
                           labelStyle: TextStyle(
                             fontFamily: 'Montserrat',
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                           focusedBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color: Colors.green),
                           )
                       ),
                     ),



                   ],
                 ),
               ),
                SizedBox(height: 40.0),
                Container(
                  height: 40,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){},
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
