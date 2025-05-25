import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled2/Cubits/add_note_cubit.dart';
import 'package:untitled2/Views/Notes_View.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:untitled2/Views/Widgets/Constants.dart';
import 'package:untitled2/simple_bloc_observer.dart';
import 'Models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.deleteBoxFromDisk(kNotesBox);
 await Hive.openBox<NoteModel>(kNotesBox);

  Bloc.observer=SimpleBlocObserver();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      
        theme: ThemeData(  brightness: Brightness.dark
            ,scaffoldBackgroundColor: Color(0xFF0D0C1D)
          ,
        ),
        home: NotesView(),
      

    );
  }
}

