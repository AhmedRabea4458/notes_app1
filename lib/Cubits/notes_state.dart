part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

 class NotesInitial extends NotesState {}
 class NotesLoading extends NotesCubit {}
 class NotesSuccess extends NotesState {}


