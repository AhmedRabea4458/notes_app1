import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:untitled2/Models/note_model.dart';
import 'package:untitled2/Views/Widgets/Constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addnote(NoteModel note)async{

    emit(AddNoteLoading());
    try{

    var notesbox=Hive.box<NoteModel>(kNotesBox);
      await notesbox.add(note);



    emit(AddNoteSuccess());

    } catch(e){
      emit(AddNoteFailure(e.toString()));
    }
  }
}
