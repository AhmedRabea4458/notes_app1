import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled2/Views/Notes_View.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:untitled2/Views/Widgets/Constants.dart';

void main() async{
  await Hive.initFlutter();
 await Hive.openBox(kNotesBox);
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

