import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/addtocart.dart';
import 'package:kaiyin_kalaigal/features/auth/screens/home.dart';
import '../../../../core/utils/widgets/app_color.dart';
import '../sellerbasicdetails.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({required Key key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  List<Widget> _mylist =const[HomePage(),SellerBasicDetails(),AddToCart()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _mylist[_selectedIndex],
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
            icon: Icon(Icons.shopping_cart, size: 40),
            label: 'CART',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.appMainColor,
        unselectedItemColor: AppColor.buttonColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
