import 'package:flutter/material.dart';

import 'app_color.dart';

class CustomeScaffold extends StatelessWidget {
  const CustomeScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          color: AppColor.appMainColor,
          height: double.infinity,
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Image.asset(
                  'assets/images/applogo.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.center,
                ),

              ]),
        ));
  }
}
