import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/DeliverTo.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/CustomTextField.dart';
import '../../../core/utils/widgets/app_color.dart';

class ShippingDetails extends StatefulWidget {
  const ShippingDetails({Key? key}) : super(key: key);

  @override
  State<ShippingDetails> createState() => _ShippingDetailsState();
}

class _ShippingDetailsState extends State<ShippingDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          color: AppColor.appMainColor,
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
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
                SizedBox(height: 10),
                Center(
                  child: Container(
                    height: 680,
                    width: 360,
                    color: AppColor.grayColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Shipping details",
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CustomTextField(
                            hintText: "Enter your name",
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CustomTextField(
                            hintText: "Phone Number",
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CustomTextField(
                            hintText: "Pincode",
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 2,
                                child: CustomTextField(
                                  hintText: "City",
                                ),
                              ),
                              SizedBox(width: 20),
                              Flexible(
                                flex: 3,
                                child: CustomTextField(
                                  hintText: "State",
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CustomTextField(
                            hintText: "House No.,Building Name",
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CustomTextField(
                            hintText: "Road name,Area,Colony",
                          ),
                        ),
                    SizedBox(height: 30),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DeliverTo(),
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
                          'Save & Continue',
                          style: TextStyle(fontSize: 15,color: AppColor.whiteColor),
                        ),
                      )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
