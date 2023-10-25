import 'package:flutter/material.dart';
import 'package:notes_app/widget/notes_item.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(),
          NoteItem()

        ],
      ),
    );
  }
}
