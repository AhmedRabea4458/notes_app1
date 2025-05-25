import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/Cubits/add_note_cubit.dart';
import '../../Cubits/notes_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return

        BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print("Failed: ${state.errMessage}");
            }
            if (state is AddNoteSuccess) {
              print("success");
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              BlocProvider.of<AddNoteCubit>(context).emit(AddNoteInitial());
              Navigator.pop(context);



            }
          },
          builder: (context, state) {
            return AbsorbPointer(
                    absorbing: state is AddNoteLoading?true:false,
                    child: Padding(
                      padding:  EdgeInsets.only(right: 16,left: 16,
                          bottom: MediaQuery.of(context).viewInsets.bottom
                      ),
                      child: SingleChildScrollView(
                        child: AddNoteForm(),
                      ),
                    ),
                  );
          },


    );
  }
}
