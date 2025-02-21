import 'package:flutter/material.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/nav_items.dart';

class MobileProfile extends StatelessWidget {
  const MobileProfile({
    super.key,
    required this.screenwidth,
  });

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenwidth,
      margin: EdgeInsets.fromLTRB(26, 100, 26, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border(
              top: BorderSide(color: greenPrimary, width: 1),
              right: BorderSide(color: greenPrimary, width: 1),
              left: BorderSide(color: greenPrimary, width: 1),
              bottom: BorderSide(color: greenPrimary, width: 1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 42, vertical: 8),
            decoration: BoxDecoration(
                color: greenPrimary,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8))),
            child: Text(
              "Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "MontserratAlternates",
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 36, vertical: 26),
            child: Text(
              dummyText + dummyText,
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
