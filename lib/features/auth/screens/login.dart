import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/home.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/signup.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/CustomTextField.dart';

import '../../../core/utils/widgets/app_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                                height: 10,
                                width: 10,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Login',
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
                                          fontSize: 20,
                                          color: AppColor.blackColor),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomTextField(
                                      hintText: "Enter your email",
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Password",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: AppColor.blackColor),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomTextField(
                                      hintText: "enter your password",
                                      obscureText: true,
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
                                          'Log in',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "log in with",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: AppColor.blackColor),
                                        ),
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons
                                              .g_mobiledata, // This is just a placeholder, replace it with the appropriate Google icon
                                          color: Colors.orange,
                                          size: 30,
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.facebook,
                                          color: Colors.blue,
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Divider(
                                        height: 3, color: AppColor.blackColor),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "No account?",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: AppColor.blackColor),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        // Text("Sing up",style: TextStyle(fontSize:20,color:Color(0xFFFF7F50)),),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUp()),
                                            );
                                          },
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                AppColor.whiteColor,
                                          ),
                                          child: Text(
                                            'Sign up',
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
