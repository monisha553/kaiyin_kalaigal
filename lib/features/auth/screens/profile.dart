

import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/sellerbasicdetails.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/widgets/AppBar.dart';

import '../../../core/utils/widgets/app_color.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hii Yazhini, Welcome back",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.person_pin_circle_outlined,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Logged in via kavi123@gmail.com",
                style: TextStyle(fontSize: 20, color: AppColor.appMainColor),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.settings_applications,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(height: 5, color: AppColor.appMainColor),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Saved Prodects",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.save_rounded,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(height: 5, color: AppColor.appMainColor),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Change Account",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.person_2,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(height: 5, color: AppColor.appMainColor),
              SizedBox(
                height: 20,
              ),
          GestureDetector(
            onTap: () {
              // Navigate to the next page here
              // Example:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SellerBasicDetails()),
              );
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SELLER",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.shop,
                    size: 40,
                  ),
                ],
              ),
          ),
              SizedBox(
                height: 20,
              ),
              Divider(height: 5, color: AppColor.appMainColor),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rewards",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.card_giftcard_rounded,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(height: 5, color: AppColor.appMainColor),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FAQ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.chat,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(height: 5, color: AppColor.appMainColor),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "History",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.av_timer,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(height: 5, color: AppColor.appMainColor),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Terms and Conditions",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.note_alt_rounded,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(height: 5, color: AppColor.appMainColor),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account Recovery",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.build,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(height: 5, color: AppColor.appMainColor),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delete Account",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.appMainColor),
                  ),
                  Icon(
                    Icons.delete,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(height: 5, color: AppColor.appMainColor),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
