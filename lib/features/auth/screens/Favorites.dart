import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/core/utils/widgets/app_color.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/home.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/AppBar.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.buttonColor,

          title: Text("Wishlist"), actions: <Widget>[
        IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            }),
      ]),
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Container(
      //     child: Column(
      //       children: [
      //         Stack(
      //           children: [
      //     InkWell(
      //     onTap: () {},
      //             child:Image.asset(
      //               "assets/images/jewellery/j4.png",
      //               fit: BoxFit.cover,
      //             ),),
      //             Positioned(
      //                 child: Align(
      //               alignment: Alignment.topRight,
      //               child: Icon(
      //                 Icons.favorite_outlined,
      //                 color: Colors.red,
      //               ),
      //             ),),
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
