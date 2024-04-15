import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/app_color.dart';
import '../profile.dart';
class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: AppColor.buttonColor,
      title: Row(
        children: [
          Image.asset(
            'assets/images/loginlogo.png',
            height: 30,
          ),
          SizedBox(width:4),
          Text('KaiyinKalaigal',style: TextStyle(fontSize: 15),),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications_none_rounded,
            size: 40,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.favorite,
            size: 40,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.person_pin,
            size: 40,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
        ),
      ],
    ),
    );

  }
}

