import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/sellerproductupload.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/AppBar.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/CustomTextField.dart';

import '../../../core/utils/widgets/app_color.dart';

class SellerBankDetails extends StatefulWidget {
  const SellerBankDetails({super.key});

  @override
  State<SellerBankDetails> createState() => _SellerBankDetailsState();
}

class _SellerBankDetailsState extends State<SellerBankDetails> {
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
                SizedBox(height: 60),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "BANK NAME",
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
                    "ACCOUNT NUMBER",
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
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "IFSC CODE",
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
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "MICR CODE",
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
                SizedBox(
                  height: 50,
                ),
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
                    'NEXT',
                    style: TextStyle(fontSize: 25, color: AppColor.whiteColor),
                  ),
                )),
              ]),
        ));
  }
}
