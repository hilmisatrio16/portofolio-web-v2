import 'package:flutter/material.dart';
import 'package:text_marquee/text_marquee.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/nav_items.dart';

class MobileRunningText extends StatelessWidget {
  const MobileRunningText({
    super.key,
    required this.screenwidth,
  });

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenwidth,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 26),
        child: Column(
          children: [
            Container(
              width: screenwidth / 0.5,
              decoration: BoxDecoration(
                  color: greenPrimary,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(10))),
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              child: TextMarquee(
                runningTextSkills,
                spaceSize: 42,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: "MontserratAlternates",
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: screenwidth / 0.5,
              height: 4,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}
