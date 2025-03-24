import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:portofolio_web/core/constants/constant_values.dart';
import 'package:portofolio_web/features/dasboard/presentation/controllers/home_controller.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/card_projects.dart';

import '../../../../core/constants/constant_colors.dart';

class Project extends StatelessWidget {
  const Project({
    super.key,
    required this.navbarKeys,
    required this.screenWidth,
    required this.controller,
    required this.scrollToSection,
  });

  final List<GlobalKey<State<StatefulWidget>>> navbarKeys;
  final double screenWidth;
  final HomeController controller;
  final void Function(int) scrollToSection;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              key: navbarKeys.first,
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
          Obx(
            () => Padding(
                padding: EdgeInsets.symmetric(horizontal: 36, vertical: 8),
                child: Wrap(
                  spacing: 32,
                  runSpacing: 32,
                  alignment: WrapAlignment.center,
                  children: [
                    for (int i = 0;
                        i <
                            // ignore: unrelated_type_equality_checks
                            (controller.isShowAllProjects == true
                                ? projects.length
                                : 3);
                        i++)
                      CardProjects(
                        project: projects[i],
                      ).animate()
                        ..fade(duration: 1000.ms) // Efek Fade
                            .slideY(
                                begin: 0,
                                end: 0.1,
                                duration: 1000.ms,
                                curve: Curves.easeOut) // Efek Fade,
                  ],
                )),
          ),
          SizedBox(
            height: 84,
          ),
          Obx(() => InkWell(
                onTap: () {
                  controller.showAllProjects();
                  if (!controller.isShowAllProjects.value) scrollToSection(0);
                },
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
                    controller.isShowAllProjects == true
                        ? "Show less"
                        : "Show more",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "MontserratAlternates",
                        fontSize: screenWidth >= 600 ? 24 : 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
