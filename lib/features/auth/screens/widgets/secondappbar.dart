import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/app_color.dart';
class secondappbar extends StatelessWidget {
  const secondappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
