import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled2/Models/note_model.dart';
import 'package:hive/hive.dart';
import 'package:untitled2/Views/Widgets/Constants.dart';
part 'notes_state.dart';



class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>?notes;
  fechAllNotes(){


      var notebox=Hive.box<NoteModel>(kNotesBox);
      notes =notebox.values.toList();




  }

}
