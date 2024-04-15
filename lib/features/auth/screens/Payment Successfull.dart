import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/home.dart';

import '../../../core/utils/widgets/app_color.dart';

class PaymentSucessful extends StatefulWidget {
  const PaymentSucessful({super.key});

  @override
  State<PaymentSucessful> createState() => _PaymentSucessfulState();
}

class _PaymentSucessfulState extends State<PaymentSucessful> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 100.h,
                      width: 100.w,
                      child: Image.asset('assets/images/Payment_Done.png')),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Payment Successful",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF117201)),
                    ),
                  ),
                  SizedBox(height: 150),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.appMainColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 15,
                        ),
                      ),
                      child: Text(
                        'Done',
                        style:
                            TextStyle(fontSize: 15, color: AppColor.whiteColor),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
