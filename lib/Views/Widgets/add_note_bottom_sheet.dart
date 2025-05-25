import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/Cubits/add_note_cubit.dart';
import 'package:untitled2/Views/Widgets/Constants.dart';
import 'package:untitled2/Views/Widgets/Custom%20_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'Custom_Button.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print("Failed: ${state.errMessage}");
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
              BlocProvider.of<AddNoteCubit>(context).emit(AddNoteInitial());
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading,

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: AddNoteForm(),
                  ),
                ),

            );
          },
        ),
      ),
    );
  }
}
