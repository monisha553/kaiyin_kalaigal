import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/app_color.dart';

class MyDropdownField extends StatefulWidget {
  @override
  _MyDropdownFieldState createState() => _MyDropdownFieldState();
}

class _MyDropdownFieldState extends State<MyDropdownField> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.buttonColor,
      child: DropdownButtonFormField<String>(
        value: _selectedItem,
        onChanged: (newValue) {
          setState(() {
            _selectedItem = newValue;
          });
        },
        items: <String>[
          'Pottery',
          'Silk Apparel',
          'Painting',
          'Stone Carvings',
          'Wooden Carvings',
          'Jewellery',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        decoration: InputDecoration(
          labelText: 'Select an item',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
