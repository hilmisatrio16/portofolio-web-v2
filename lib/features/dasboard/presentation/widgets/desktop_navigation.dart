import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import '../../../../core/constants/iconify_assets.dart';
import '../../../../core/constants/nav_items.dart';

class DesktopNavigation extends StatelessWidget {
  const DesktopNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < headerNav.length; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: TextButton(
              onPressed: () {},
              child: Text(
                headerNav[i],
                style: TextStyle(
                    fontFamily: "MontserratAlternates",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 24),
              ),
            ),
          ),
        Spacer(),
        //Whatsapp Button
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white, // Warna border
                width: 1, // Ketebalan border
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                contactWA,
                style: TextStyle(
                    fontFamily: "MontserratAlternates",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                width: 10,
              ),
              Iconify(
                iconWA,
                size: 32,
                color: Colors.white,
              )
            ]),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        //Hire Me
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white, // Warna border
                width: 1, // Ketebalan border
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(children: [
              Text(
                hire,
                style: TextStyle(
                    fontFamily: "MontserratAlternates",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              Text(
                me,
                style: TextStyle(
                    fontFamily: "MontserratAlternates",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ]),
          ),
        )
      ],
    );
  }
}
