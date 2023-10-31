import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_search_icon.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onPressed}) : super(key: key);
final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: TextStyle(
          fontSize: 28
        ),),
        Spacer(),
        CustomIcon(icon:icon,onPressed: onPressed,)

      ],
    );
  }
}
