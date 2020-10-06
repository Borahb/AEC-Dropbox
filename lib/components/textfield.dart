import 'package:flutter/material.dart';
import 'package:project_tpc/components/text_container.dart';



class TextRField extends StatelessWidget {

  final String hintText;
  final ValueChanged<String> onChanged;
  final validator;
  final keyboardinput;

  const TextRField({
    Key key,
    this.hintText,
    this.onChanged,
    this.validator,
    this.keyboardinput
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextContainer(
      child: TextFormField(
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
      
    );
  }
}