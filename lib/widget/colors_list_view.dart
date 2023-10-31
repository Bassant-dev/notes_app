import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit.dart';
class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.color}) : super(key: key);
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive?  CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    ): CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key, }) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
  List<Color> colors= [
    const Color(0xff0892A5),
    const Color(0xff06908F),
    const Color(0xffDBB68F),
    const Color(0xff0CA4A5),
    const Color(0xffBB7E5D),
  ];
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          itemCount:colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index){
            return  Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex=index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  setState(() {


                  });
                },
                  child: ColorItem(isActive: currentIndex == index,color: colors[index],)),
            );
          }
      ),
    );
  }
}
