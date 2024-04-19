import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/sellerbankdetails.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/AppBar.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/BottomNavigationBar.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/CustomTextField.dart';

import '../../../core/utils/widgets/app_color.dart';

class SellerBasicDetails extends StatefulWidget {
  const SellerBasicDetails({super.key});

  @override
  State<SellerBasicDetails> createState() => _SellerBasicDetailsState();
}

class _SellerBasicDetailsState extends State<SellerBasicDetails> {
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
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: AppColor.buttonColor,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_filled, size: 40),
      //       label: 'HOME',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shop, size: 40),
      //       label: 'SELL',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shop, size: 40),
      //       label: 'Shop',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.menu, size: 40),
      //       label: 'CATEGORIES',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart, size: 40),
      //       label: 'CART',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: AppColor.appMainColor,
      //   unselectedItemColor: AppColor.buttonColor,
      //   onTap: _onItemTapped,
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "NAME",
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
                hintText: "",
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "PHONE NUMBER",
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
                hintText: "",
                keyboardType: TextInputType.phone,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "PAN No./GST No.",
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
                hintText: "",
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "ADDRESS",
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
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.buttonColor, // Use your app color
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                keyboardType: TextInputType.streetAddress,
                maxLines: 4, // Adjust according to your layout
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SellerBankDetails(),
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
                'NEXT',
                style: TextStyle(fontSize: 25, color: AppColor.whiteColor),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
