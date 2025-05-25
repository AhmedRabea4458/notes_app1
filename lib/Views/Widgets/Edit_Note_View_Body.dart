import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/Models/note_model.dart';
import 'package:untitled2/Views/Widgets/Custom%20_text_field.dart';
import 'package:untitled2/Views/Widgets/Custom_app_bar.dart';

import '../../Cubits/add_note_cubit.dart';
import '../../Cubits/notes_cubit.dart';
class   EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title,content;
   late TextEditingController titleController;
   late TextEditingController contentController;

  @override
  void initState() {
    super.initState();

    titleController = TextEditingController(text: widget.note.title);
    contentController = TextEditingController(text: widget.note.subtitle);
  }
   @override
   void dispose() {

     titleController.dispose();
     contentController.dispose();
     super.dispose();
   }

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomAppBar(onPressed: (){
            widget.note.title=title??widget.note.title;
            widget.note.subtitle=content??widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();

            Navigator.pop(context);
          },
              Title: "EditNote",icon: Icons.check),
          SizedBox(height: 40),
          CustomTextField(
              controller: titleController,
              onChanged: (value){
            title=value;
          },
              hint: "Title"),
          const SizedBox(height: 16,),
          CustomTextField(
            controller: contentController,
            onChanged:(value){
              content=value;
          },
            hint: "Conten",MaxLines: 5,)
        ]


      ),
    );
  }
}
