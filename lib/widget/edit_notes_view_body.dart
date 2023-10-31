import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/add_note_cubit.dart';
import '../cubit/notes_cubit.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({Key? key, required this.note}) : super(key: key);
final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
   String? title,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          CustomAppBar(title: 'Edit Note',icon: Icons.check,onPressed: (){

             widget.note.title=title ?? widget.note.title;
             widget.note.subtitle=content ?? widget.note.subtitle;
             widget.note.save();
             BlocProvider.of<NotesCubit>(context).fetchAllNotes();
             Navigator.pop(context);
          },),
          const SizedBox(height: 50,),
           CustomTextField(
            onchange: (value){
             title=value;
            },
              hint: widget.note.title),
          const SizedBox(height: 16,),
           CustomTextField(hint:widget.note.subtitle ,maxLines: 5,
          onchange: (value){
            content=value;
          },),

        ],
      ),
    );
  }
}