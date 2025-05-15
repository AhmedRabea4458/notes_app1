import 'package:flutter/material.dart';
import 'Custom_app_bar.dart';
import 'Custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
      child: Column(
        children: [


          CustomAppBar(),
          SizedBox(height: 20),
          Expanded(child: NotesListView()),

        ],
      ),



    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index)
        {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: NoteItem(),
          );
        }
    );
  }
}
