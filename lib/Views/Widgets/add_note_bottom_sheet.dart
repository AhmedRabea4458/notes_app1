import 'package:flutter/material.dart';
import 'package:untitled2/Views/Widgets/Custom%20_text_field.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16,left: 16),
      child: Column(children: [
        SizedBox(height: 32),
       CustomTextField(hint: "Title",),
        SizedBox(height: 16),
        CustomTextField(hint: "Content"
        ,MaxLines: 5,
        )

      ],
      ),
    );
  }
}
