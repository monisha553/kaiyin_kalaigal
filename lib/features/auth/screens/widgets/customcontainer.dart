import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/app_color.dart';

class CustomeContainer extends StatelessWidget {
  const CustomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            body: Container(
              color: AppColor.appMainColor,
              height: 80,
                      width: double.infinity,
                      child: SizedBox(height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 40),
                            Text(
                              "Kaiyin",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColor.buttonColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 2),
                            Text(
                              "Kalaigal",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColor.whiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 90,
                              width: 80,
                              child: Image.asset(
                                "assets/images/white logo.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

            ));
  }
}
