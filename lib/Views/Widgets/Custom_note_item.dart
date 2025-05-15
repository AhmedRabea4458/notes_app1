import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled2/Views/Edit_Note_View.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder:(context){
              return EditNoteView();
            }

            ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: Colors.lightBlue.shade100,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text( "Flutter tips",
                style: TextStyle(
                  fontSize: 26,
      
                  color: Colors.black87, 
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24,bottom: 24),
                child: const Text ("Build your Career with Thanwot Samy",
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
              child: Text("May 15, 2025",style: TextStyle(
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
