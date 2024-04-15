import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/product%20description.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/profile.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/AppBar.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/BottomNavigationBar.dart';


import '../../../core/utils/widgets/app_color.dart';

class Jewellery extends StatefulWidget {
  const Jewellery({super.key});

  @override
  State<Jewellery> createState() => _JewelleryState();
}

class _JewelleryState extends State<Jewellery> {
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
                    'assets/images/jewellery/Jewellypage.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'JEWELLEY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
                        'Crafted with care, Worn with Joy_\nAdorn Yourself with Wooden Jewellery',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 66,
              width: double.infinity,
              color: AppColor.appMainColor,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                        color: AppColor.whiteColor,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      "All",
                      style:
                          TextStyle(fontSize: 20, color: AppColor.whiteColor),
                    ),
                    Text(
                      "BEST SELLER",
                      style:
                          TextStyle(fontSize: 20, color: AppColor.whiteColor),
                    ),
                    Text(
                      "NEW ARRIVALS",
                      style:
                          TextStyle(fontSize: 20, color: AppColor.whiteColor),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/jewellery/j1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Pendant naturalwood\nnecklace\nRs.1500",
                        style: TextStyle(
                            fontSize: 10,
                            color: AppColor.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/jewellery/j2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Brown wood bangle\nRs.350",
                        style: TextStyle(
                            fontSize: 10,
                            color: AppColor.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/jewellery/j3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Wooden hair stick pins\nRs.2500",
                        style: TextStyle(
                            fontSize: 10,
                            color: AppColor.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProdectDescription()),
                          );
                        },
                        child: Image.asset(
                          'assets/images/jewellery/j4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Natural wood Earrings\nRs.550",
                        style: TextStyle(
                            fontSize: 10,
                            color: AppColor.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/jewellery/j5.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Wooden Bentwood Rings\nRs.500",
                        style: TextStyle(
                            fontSize: 10,
                            color: AppColor.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/jewellery/j6.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Wooden Beadwood Bracelet\nRs.599",
                        style: TextStyle(
                            fontSize: 10,
                            color: AppColor.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/jewellery/j7.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Adjustable green \nwooden necklace\nRs.2500",
                        style: TextStyle(
                            fontSize: 10,
                            color: AppColor.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/jewellery/j8.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Wooden cufflinks\nRs.399",
                        style: TextStyle(
                            fontSize: 10,
                            color: AppColor.blackColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.appMainColor,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
                child: Text(
                  'MORE',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
       //bottomNavigationBar: CustomBottomNavigationBar(key: Key('homePage')),
    );
  }
}
