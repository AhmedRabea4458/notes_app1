import 'package:flutter/material.dart';

import 'Constants.dart';

class CustomTextField extends StatelessWidget {
 const  CustomTextField({super.key,
    required this.hint, this.MaxLines=1,this.onSaved
  });

  final String hint;
  final int MaxLines;

final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if (value?.isEmpty??true){
          return'field is required';
        }else{
          return null;
        }
      }
      ,
      cursorColor:  kPrimaryColor,
      maxLines: MaxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: kPrimaryColor,
        ),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8)
      , borderSide: BorderSide(
        color: color ?? Colors.white),
    );
  }
}