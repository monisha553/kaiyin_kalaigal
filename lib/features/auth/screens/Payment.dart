import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/CustomTextField.dart';

import '../../../core/utils/widgets/app_color.dart';
import 'Payment Successfull.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  int _selectedPaymentOption = 0;

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
                          SizedBox(height: 40),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Payment details",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Radio<int>(
                                    value: 0,
                                    groupValue: _selectedPaymentOption,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedPaymentOption = value!;
                                      });
                                    },
                                  ),
                                  Text('Card'),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio<int>(
                                    value: 1,
                                    groupValue: _selectedPaymentOption,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedPaymentOption = value!;
                                      });
                                    },
                                  ),
                                  Text('Net banking'),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio<int>(
                                    value: 2,
                                    groupValue: _selectedPaymentOption,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedPaymentOption = value!;
                                      });
                                    },
                                  ),
                                  Text('UPI/QR'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Name on Card",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: CustomTextField(
                              hintText: "",
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Card Number",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: CustomTextField(
                              hintText: "",
                            obscureText: true,),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text("Valid Thru"),
                              ),
                              SizedBox(width: 100),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text("CVV"),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  width: 120,
                                  child: CustomTextField(
                                    hintText: "MM/YY",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  width: 100,
                                  child: CustomTextField(
                                    hintText: "",
                                    obscureText: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 120),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PaymentSucessful(),
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
                                'Pay',
                                style: TextStyle(
                                    fontSize: 15, color: AppColor.whiteColor),
                              ),
                            ),
                          ),
                        ]),
                  )),
                ]),
          )),
    ));
  }
}
