import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/core/utils/widgets/app_color.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/product%20description.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/shipping.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/CustomTextField.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({Key? key}) : super(key: key);

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 680,
                      width: 360,
                      color: AppColor.grayColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50),
                          Text(
                            "Order Summary",
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/jewellery/j4.png",
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Black and Brown teardrop Earrings",
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Rs.550", style: TextStyle(fontSize: 15)),
                          SizedBox(height: 20),
                          Text(
                            "Gift Card / Discount code",
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  hintText: '',
                                )
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.buttonColor,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Sub Total",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Rs.450",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Tax ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Rs.4.50",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Shipping",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Free",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Rs.454.5",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.appMainColor,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(fontSize: 20,color: AppColor.whiteColor),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ShippingDetails(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.appMainColor,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                child: Text(
                                  'Next',
                                  style: TextStyle(fontSize: 20,color: AppColor.whiteColor),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
