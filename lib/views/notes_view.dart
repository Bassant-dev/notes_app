import 'package:flutter/material.dart';
import 'package:notes_app/widget/add_note_bottom_sheet.dart';

import '../widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet
          (
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
            context: context, builder:(context){
          return AddNoteBottomSheet();
        });
      },
        backgroundColor: Colors.black,child: const Icon(Icons.add),),
      body:const NotesViewBody() ,
    );
  }
}
