import 'package:flutter/material.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/constant_values.dart';

class DesktopSkills extends StatelessWidget {
  const DesktopSkills({
    super.key,
    required this.screenwidth,
    required this.navbarKeys,
  });

  final double screenwidth;
  final List<GlobalKey<State<StatefulWidget>>> navbarKeys;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarKeys[1],
      width: screenwidth,
      margin: EdgeInsets.fromLTRB(0, 100, screenwidth / 6, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          border: Border(
              top: BorderSide(color: greenPrimary, width: 1),
              right: BorderSide(color: greenPrimary, width: 1),
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
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 32),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 46,
                  runSpacing: 46,
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
                              fontSize: 20,
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
