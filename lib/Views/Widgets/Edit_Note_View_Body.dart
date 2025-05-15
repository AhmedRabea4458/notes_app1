import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/Views/Widgets/Custom_app_bar.dart';
class   EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(Title: "EditNote",icon: Icons.check),
          SizedBox(height: 50),
        ]


      ),
    );
  }
}
