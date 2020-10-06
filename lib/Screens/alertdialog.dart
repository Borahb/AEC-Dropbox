import 'package:flutter/material.dart';



class ADialog extends StatelessWidget {

final String  description,buttonText;
final Image image;

ADialog({
  
  this.description,
  this.buttonText,
  this.image
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
                blurRadius: 10.0,
                offset: Offset(0.0,10.0)
              )
            ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('images/animated-check.gif')
             
            ],
          ),
        ),
        
      ],
    );
  }


}