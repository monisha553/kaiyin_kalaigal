import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/sellercompletescreen.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/AppBar.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/CustomTextField.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/imageuplodescreen.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/mydropdownfield.dart';

import '../../../core/utils/widgets/app_color.dart';

class SellerProductUpload extends StatefulWidget {
  const SellerProductUpload({Key? key}) : super(key: key);

  @override
  State<SellerProductUpload> createState() => _SellerProductUploadState();
}

class _SellerProductUploadState extends State<SellerProductUpload> {
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
                "PRODUCT CATEGORY",
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
              child: MyDropdownField(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "PRODUCT NAME",
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
                hintText: '',
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "PRODUCT DESCRIPTION",
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
                  fillColor: AppColor.buttonColor,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                keyboardType: TextInputType.streetAddress,
                maxLines: 5,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "PHOTOS",
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
              child: Stack(
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: AppColor.buttonColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: () {
                          // ImageUploadScreen();   //add imageuploaderscreen to pick images
                        },
                        icon: Icon(
                          Icons.file_upload_outlined,
                          size: 40,
                        ),
                      )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "PRODUCT DIMENSION",
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
              child: Text(
                "LENGTH",
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
                "BREADTH",
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
                "WIDTH",
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
                "STOCK QUANTITY ",
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
                "PRODUCT VIDEO(optional)",
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
              child: Stack(
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: AppColor.buttonColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // child: ImageUploadScreen(), // Add ImageUploadScreen here
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.file_upload_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "PRODUCT COST",
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
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SellerCompleteScreen(),
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
