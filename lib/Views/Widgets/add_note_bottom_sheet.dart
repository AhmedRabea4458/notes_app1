import 'package:flutter/material.dart';
import 'package:untitled2/Views/Widgets/Constants.dart';
import 'package:untitled2/Views/Widgets/Custom%20_text_field.dart';

import 'Custom_Button.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16,left: 16),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 32),
         CustomTextField(hint: "Title",),
          SizedBox(height: 16),
          CustomTextField(hint: "Content"
          ,MaxLines: 5,
          ),
          SizedBox(height: 32),
          CustomButton(),
          SizedBox(height: 16),
        ],
        ),
      ),
    );
  }
}
