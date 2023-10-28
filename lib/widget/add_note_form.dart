import 'package:flutter/material.dart';
import 'package:notes_app/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widget/custom_button.dart';
import 'package:notes_app/widget/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String ?title,subtitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
    key: formKey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
         onSaved: (value){
            title=value;},
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              subtitle=value;
              },

            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
  builder: (context, state) {
    return CustomButton(
            isLoading:State is AddNoteLoading ? true :false,
            onTap: (){
              if(formKey.currentState !.validate()){
                formKey.currentState!.save();
                var noteModel=NoteModel(title: title!, subtitle: subtitle!, date:DateTime.now().toString(), color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
          );
  },
),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
