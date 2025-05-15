import 'package:flutter/material.dart';

import 'Widgets/Edit_Note_View_Body.dart';
class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:EditNoteViewBody(),
    );
  }
}
