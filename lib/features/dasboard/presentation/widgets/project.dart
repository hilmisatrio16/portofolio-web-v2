import 'package:flutter/material.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/card_projects.dart';

import '../../../../core/constants/constant_colors.dart';

class Project extends StatelessWidget {
  const Project({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 54, vertical: 8),
              decoration: BoxDecoration(
                  color: greenPrimary,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8))),
              child: Text(
                "Projects",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "MontserratAlternates",
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 52,
          ),
          Wrap(
            spacing: 32,
            runSpacing: 32,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < 3; i++) CardProjects(),
            ],
          ),
          SizedBox(
            height: 52,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 26, vertical: 4),
              decoration: BoxDecoration(
                color: greenPrimary,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
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
                "Show more",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "MontserratAlternates",
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
