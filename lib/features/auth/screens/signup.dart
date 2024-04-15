import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/home.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/login.dart';

import '../../../core/utils/widgets/app_color.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Image.asset(
                      'assets/images/applogo.png',
                      height: 221,
                      width: double.infinity,
                      alignment: Alignment.center,
                    ),
                    Container(
                      color: AppColor.whiteColor,
                      height: 500,
                      width: 350,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 94,
                              width: 86,
                              child: Image.asset(
                                'assets/images/loginlogo.png',
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: AppColor.blackColor),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 362,
                              width: 288,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColor.blackColor),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Enter your email',
                                        filled: true,
                                        fillColor: AppColor.buttonColor,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Password",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColor.blackColor),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: AppColor.buttonColor,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      " Repeat Password",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColor.blackColor),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: AppColor.buttonColor,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFFFF7F50),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 100, vertical: 10),
                                        ),
                                        child: Text(
                                          'Sign Up',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Divider(
                                        height: 3, color: AppColor.blackColor),
                                    SizedBox(height: 15),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Have a account?",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: AppColor.blackColor),
                                        ),
                                        // Text("Log in",style: TextStyle(fontSize:15,color:Color(0xFFFF7F50)),),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginPage()),
                                            );
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                AppColor.whiteColor,
                                          ),
                                          child: Text(
                                            'Login',
                                            style: TextStyle(
                                              fontFamily: 'Bold',
                                              color: Color(0xFFFF7F50),
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                  ]),
            ),
          ),
        )));
  }
}
