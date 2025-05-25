import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/Cubits/notes_cubit.dart';
import 'package:untitled2/Views/Widgets/Notes_view_body.dart';
import 'package:untitled2/Views/Widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(


                  borderRadius: BorderRadius.circular(16)
              ),

              context: context, builder: (context) {
            return const AddNoteBottomSheet();
          }

          );
        }, child: const Icon(Icons.add),),
        body: const NotesViewBody(),


      ),
    );
  }
}
