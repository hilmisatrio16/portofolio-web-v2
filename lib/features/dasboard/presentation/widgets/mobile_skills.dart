import 'package:flutter/material.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/constant_values.dart';

class MobileSkills extends StatelessWidget {
  const MobileSkills({
    super.key,
    required this.screenwidth,
  });

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenwidth,
      margin: EdgeInsets.fromLTRB(26, 32, 26, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border(
              top: BorderSide(color: greenPrimary, width: 1),
              right: BorderSide(color: greenPrimary, width: 1),
              left: BorderSide(color: greenPrimary, width: 1),
              bottom: BorderSide(color: greenPrimary, width: 1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 42, vertical: 8),
            decoration: BoxDecoration(
                color: greenPrimary,
                borderRadius: BorderRadius.only(topRight: Radius.circular(8))),
            child: Text(
              "Skills",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "MontserratAlternates",
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 32),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 32,
                  runSpacing: 32,
                  children: [
                    for (int i = 0; i < skills.length; i++)
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        decoration: BoxDecoration(
                          color: blackMetal,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: greenPrimary, width: 1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(2, 4),
                            ),
                          ],
                        ),
                        child: Text(
                          skills[i],
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
