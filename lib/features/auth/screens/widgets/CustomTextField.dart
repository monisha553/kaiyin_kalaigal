import 'package:flutter/material.dart';
import 'package:kaiyin_kalaigal/core/utils/widgets/app_color.dart'; // Import your app colors

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.black, // You can customize the text color
      ),
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: AppColor.buttonColor, // Use your app color
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
