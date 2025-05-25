import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled2/Models/note_model.dart';
import 'package:untitled2/Views/Edit_Note_View.dart';
import 'package:intl/intl.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder:(context){
              return EditNoteView(note: note,);
            }

            ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color:Color(note.color),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text( note.title,
                style: TextStyle(
                  fontSize: 26,
      
                  color: Colors.black87,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24,bottom: 24),
                child: Text (note.subtitle,
                  style : TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
              ),
              trailing: IconButton(onPressed: (){},
                  icon: Icon(
                      FontAwesomeIcons.trash
                    ,color: Colors.black
                  ,size: 24,
                  )),
      
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(note.date,style: TextStyle(
                color: Colors.black.withOpacity(.4),
                fontSize: 16
              ),),
            )
          ],
        ),
      
      ),
    );
  }
}
