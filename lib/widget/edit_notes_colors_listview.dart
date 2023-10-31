import 'package:flutter/cupertino.dart';

import '../constant.dart';
import '../models/note_model.dart';
import 'colors_list_view.dart';

class EditNotesColorList extends StatefulWidget {
  const EditNotesColorList({Key? key, required this.noteModel}) : super(key: key);
  final NoteModel noteModel;
  @override
  State<EditNotesColorList> createState() => _EditNotesColorListState();
}

class _EditNotesColorListState extends State<EditNotesColorList> {
  late int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    currentIndex=kColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          itemCount:kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index){
            return  Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: (){
                    currentIndex=index;
                    widget.noteModel.color=kColors[index].value;
                    setState(() {


                    });
                  },
                  child: ColorItem(isActive: currentIndex == index,color: kColors[index],)),
            );
          }
      ),
    );
  }
}