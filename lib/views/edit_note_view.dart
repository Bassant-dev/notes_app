import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

import '../widget/edit_notes_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(
        note: note,
      ),
    );
  }
}

