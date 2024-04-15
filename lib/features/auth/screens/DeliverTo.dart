import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/Payment.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/shipping.dart';

import '../../../core/utils/widgets/app_color.dart';

class DeliverTo extends StatefulWidget {
  const DeliverTo({super.key});

  @override
  State<DeliverTo> createState() => _DeliverToState();
}

class _DeliverToState extends State<DeliverTo> {
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
                        "Kaiyin Kalaigal",
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
                          "assets/images/ordersummarylogo.png",
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
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Deliver to:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                              SizedBox(width: 60),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ShippingDetails()),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 15,
                                  ),
                                ),
                                child: Text(
                                  'Change',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "N Yazhini",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "290,avadi bustop,avadi\nchennai TamilNadu\n602005",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                          ),
                          SizedBox(height: 200),
                          Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Payment(),
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
                                  'Continue',
                                  style: TextStyle(fontSize: 15,color: AppColor.whiteColor),
                                ),
                              )),
                        ]),
                  )),
                ]),
          )),
    ));
  }
}
