import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/sellerproductupload.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/selleruploadsuccessfull.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/AppBar.dart';

import '../../../core/utils/widgets/app_color.dart';

class SellerCompleteScreen extends StatefulWidget {
  const SellerCompleteScreen({super.key});

  @override
  State<SellerCompleteScreen> createState() => _SellerCompleteScreenState();
}

class _SellerCompleteScreenState extends State<SellerCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "MAKE CHANGES",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SellerProductUpload(),
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
                      'GO BACK',
                      style: TextStyle(fontSize: 25, color: AppColor.whiteColor),
                    ),
                  )),
              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "CONFORM UPLOAD",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>sellerUploadSuccessfull(),
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
                      'UPLOAD',
                      style: TextStyle(fontSize: 25, color: AppColor.whiteColor),
                    ),
                  )),


            ]),
      ),
    );
  }
}
