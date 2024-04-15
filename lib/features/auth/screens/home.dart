import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaiyin_kalaigal/core/utils/widgets/app_color.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/jewellery.dart';

import 'package:kaiyin_kalaigal/features/auth/screens/widgets/AppBar.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/BottomNavigationBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(),
      // bottomNavigationBar: CustomBottomNavigationBar(key: Key('homePage')),
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
      body: Container(
        color: AppColor.whiteColor,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 2),
                Stack(children: [
                  Image.asset(
                    'assets/images/home/Home1.png',
                  ),
                  Positioned(
                    top: 20,
                    right: 80,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'VANAKKAM \nவணக்கம்',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: 0.5,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "உங்கள் கைகளின் வசனங்கள்-\nஉலகை அழகாக்குங்கள்\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "The Words of Your Hands-\n Beautify the World!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ]),
                SizedBox(height: 10),
                Container(
                  width: 380,
                  height: 380,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            "OUR PRODUCTS",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(height: 10),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.appMainColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/home/Pottery.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "POTTERY",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.appMainColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/home/Silk Apparel.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "SILK APPAREL",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.appMainColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/home/Painting.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "PAINTINGS",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.appMainColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/home/Stone Carvings.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "STONE CARVINGS",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.appMainColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/home/Wooden Carvings.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "WOODEN CARVING",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.appMainColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Jewellery()),
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/images/home/Jewellery.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "JEWELLERY",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Image.asset(
                  'assets/images/home/Home3.png',
                ),
                SizedBox(height: 10),
                Text(
                  "படிக்கலாம் வாங்க",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blackColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/home/Home4.png',
                ),
              ]),
        ),
      ),
    );
  }
}
