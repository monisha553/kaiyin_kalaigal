import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/app_color.dart';
import '../Favorites.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 37,
              width: 43,
              child: Image.asset(
                'assets/images/loginlogo.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 2),
            Text(
              'Kaiyin',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(width: 2,),
            Text(
              'Kalaigal',
              style: TextStyle(fontSize: 15,color: AppColor.blackColor),
            ),
          ],
        ),
        actions: [
                   //Notification Button
          IconButton(
            icon: Icon(
              Icons.notifications_none_rounded,
              size: 40,
            ),
            onPressed: () {},
          ),
                     //Favorite button
          IconButton(
            icon: Icon(
              Icons.favorite,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Favorites(),
                ),
              );
            },
          ),
               //Profile button
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
