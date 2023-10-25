import 'package:flutter/material.dart';

import '../widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),backgroundColor: Colors.black,),
      body:const NotesViewBody() ,
    );
  }
}
