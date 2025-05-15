import 'package:flutter/material.dart';
import 'Custom_app_bar.dart';
import 'Custom_note_item.dart';
import 'Notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child:const Column(
        children: [

          SizedBox(height: 20),
          CustomAppBar(Title: "Notes",icon: Icons.search,),
          SizedBox(height: 20),
          Expanded(child: NotesListView()),

        ],
      ),



    );
  }
}


