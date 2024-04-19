import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/home.dart';

import '../../../core/utils/widgets/app_color.dart';

class sellerUploadSuccessfull extends StatelessWidget {
  const sellerUploadSuccessfull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
            height: 100.h,
            ),

               Align(alignment: Alignment.center,
                 child: Text(
                  "your product upload successfully",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                               ),
               ),
              SizedBox(
                height: 30,
              ),
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
                    horizontal: 60,
                    vertical: 20,
                  ),
                ),
                child: Text(
                  'DONE',
                  style: TextStyle(fontSize: 25, color: AppColor.whiteColor),
                ),
              )),
            ],
          ),
        ),
    );
  }
}
