
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';

import '../views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context){
         return const EditNoteView();
       }));
    },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color:Color(note.color),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(note.title,style: const TextStyle(
                color: Colors.black,
                fontSize: 26
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(note.subtitle,style: TextStyle(
                  fontSize: 18,
                    color: Colors.black.withOpacity(.5)
                )),
              ),
              trailing: IconButton(onPressed: (){
                note.delete();
              },icon: const Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,style: TextStyle(
                fontSize: 16,
      color: Colors.black.withOpacity(.4)
      )),
            ),

          ],
        ),
      ),
    );
  }
}
