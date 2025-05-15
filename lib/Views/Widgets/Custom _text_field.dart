import 'package:flutter/material.dart';

import 'Constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:  kPrimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
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