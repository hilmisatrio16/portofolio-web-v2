import 'package:flutter/material.dart';
import 'package:portofolio_web/core/constants/constant_values.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/nav_items.dart';

class DesktopProfile extends StatelessWidget {
  const DesktopProfile({
    super.key,
    required this.screenwidth,
    required this.navbarKeys,
  });

  final double screenwidth;
  final List<GlobalKey<State<StatefulWidget>>> navbarKeys;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarKeys[4],
      width: screenwidth,
      margin: EdgeInsets.fromLTRB(screenwidth / 6, 100, 0, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          border: Border(
              top: BorderSide(color: greenPrimary, width: 1),
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
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 36, vertical: 26),
            child: Text(
              aboutMe,
              style: TextStyle(
                  fontSize: 20,
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
