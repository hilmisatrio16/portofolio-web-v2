import 'package:flutter/material.dart';
import 'package:text_marquee/text_marquee.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/nav_items.dart';

class DekstopRunningText extends StatelessWidget {
  const DekstopRunningText({
    super.key,
    required this.screenwidth,
  });

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenwidth,
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            width: screenwidth / 1.3,
            decoration: BoxDecoration(
                color: greenPrimary,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            child: TextMarquee(
              runningTextSkills,
              spaceSize: 72,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "MontserratAlternates",
                  fontSize: 28),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: screenwidth / 1.3,
            height: 4,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
    );
  }
}
