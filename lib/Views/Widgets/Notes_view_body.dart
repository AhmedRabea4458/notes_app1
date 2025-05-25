import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Cubits/notes_cubit.dart';
import 'Custom_app_bar.dart';
import 'Custom_note_item.dart';
import 'Notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody ({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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


