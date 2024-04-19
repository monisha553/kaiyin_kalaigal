import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kaiyin_kalaigal/features/auth/screens/profile.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/AppBar.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/secondappbar.dart';

import '../../../core/utils/widgets/app_color.dart';
import 'ordersummary.dart';

class ProdectDescription extends StatefulWidget {
  const ProdectDescription({super.key});

  @override
  State<ProdectDescription> createState() => _ProdectDescriptionState();
}

class _ProdectDescriptionState extends State<ProdectDescription> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.buttonColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, size: 40),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop, size: 40),
            label: 'SELL',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop, size: 40),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, size: 40),
            label: 'CATEGORIES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, size: 40),
            label: 'CART',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.appMainColor,
        unselectedItemColor: AppColor.buttonColor,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/PD1.png',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 90,
                          width: 170,
                          color: AppColor.grayColor,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'OUR PRODUCTS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              secondappbar(), //second app bar
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/jewellery/j4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Black and Brown \nteardrop Earrings",
                              style: TextStyle(fontSize: 30),
                            ),
                          )),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.550",
                                  style: TextStyle(fontSize: 20),
                                ),
                              )),
                  ////// pending code
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OrderSummary(),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.shopping_bag),
                                label: Text(
                                  'Buy Now',
                                  style: TextStyle(color: AppColor.blackColor),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.buttonColor,
                                )),
                            SizedBox(width: 20),
                            ElevatedButton.icon(
                                onPressed: ()   { //need to change his code to add to cart page
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OrderSummary(),
                                  ),
                                );
                                  },
                                icon: Icon(Icons.add_shopping_cart_rounded),
                                label: Text(
                                  'Add to Cart',
                                  style: TextStyle(color: AppColor.blackColor),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.buttonColor,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite_border,
                          ),
                          Text(
                            'ADD TO WISHLIST',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
