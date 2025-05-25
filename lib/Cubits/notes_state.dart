part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesLoading extends NotesCubit {}
final class NotesSuccess extends NotesCubit {
  final List<NoteModel>notes;
  NotesSuccess(this.notes);
}
final class NotesFailure extends NotesCubit {
  final String errMessage;
  NotesFailure(this.errMessage);
}

