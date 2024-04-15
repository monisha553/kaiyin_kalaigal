import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/widgets/app_color.dart';
import '../../auth/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColor.appMainColor,
        child: SafeArea(
            child: Scaffold(
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
                            'assets/images/logodesign.jpeg',
                            height: 221,
                            width: double.infinity,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 110),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 130,
                              width: 450,
                              child: Text(
                                "பாரம்பரியம் புதுமை பெறும் இடம். கைகளைக் கோர்த்து கையின் கலைகள் போற்றுவோம். ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Bold",
                                  fontSize: 22,
                                  color: AppColor.whiteColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height:180),
                          Container(
                            width: 369.w,
                            height: 71.h,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginPage()),
                                );
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: AppColor.buttonColor,
                              ),
                              child: Text(
                                'GET STARTED',
                                style: TextStyle(
                                fontFamily: 'Bold',  color: AppColor.whiteColor,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ])))));
  }
}
