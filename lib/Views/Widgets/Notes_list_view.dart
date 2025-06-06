import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/Cubits/notes_cubit.dart';
import 'package:untitled2/Models/note_model.dart';

import 'Custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
       List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes??[];

       if (notes.isEmpty) {
         return Center(
           child: Text(
             'لا توجد ملاحظات بعد',
             style: TextStyle(fontSize: 18, color: Colors.grey),
           ),
         );
       }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),

          child: ListView.builder(
            itemCount:notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(
                    note:notes[index] ,
                  ),
                );
              }
          ),
        );
      },
    );
  }
}