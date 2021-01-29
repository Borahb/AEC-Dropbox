import 'package:flutter/material.dart';
import 'package:project_tpc/constants.dart';

class TextContainer extends StatelessWidget {
  final Widget child;
  const TextContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        
      ),
      child: child,
    );
  }
}