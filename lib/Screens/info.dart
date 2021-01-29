import 'package:flutter/material.dart';
import 'package:project_tpc/bloc.navigation_bloc/navigation_bloc.dart';


class Info extends StatelessWidget with NavigationStates{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top:15,bottom:20,right:18,left:23),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
                Row(
                  children: [
                      Text('ABOUT',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600
                      ),)
                  ],
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left :26.0),
                  child: Text('Version 1.1.5',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      Text('AEC Dropbox is a platform for the students of Assam Engineering College to upload and edit their student details in the Training and Placement Cell database.',
                      style: TextStyle(
                          fontSize: 19
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 9,),
                Padding(
                  padding: const EdgeInsets.only(left:22.0),
                  child: Text('Technical Support',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left:15,right:15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/samer.jpg',scale: 4,),
                                           
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:3),
                        child: Text('Sameer Kasera',style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400
                        ),),
                      ),
                      
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:3),
                        child: Text('Training and Placement Coordinator\nBatch 2020-21',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),),
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        
                        Text('For queries:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),),
                     
                        Text(' aecdropbox44@gmail.com',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.blue[700],fontStyle: FontStyle.italic),),
                      ],
                    ),
                  ],
                ),
                
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left:22.0),
                  child: Text('Developer Team',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w600),),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left:15,right:15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('images/bh1.jpg',scale: 7,),
                      Image.asset('images/kunj.jpg',scale:15.3)
                      
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:4),
                        child: Text('Bhaskar Borah',style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:6),
                        child: Text('Kunjal Sarma',style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400
                        ),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.only(left:9.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Electronics and \nTelecomm. Engineering',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          )),
                      Text('Computer Science  \nEngineering',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.only(left:9.0),
                  child: Row(
                  
                  children: [
                    Text('Batch 2018-22',style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                            )),
                    SizedBox(width: 83),
                    Text('Batch 2019-23',style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                            )),
                  ],
                  ),
                ),
                 
            ],
          ),
        ),
      ),
    );
  }
}