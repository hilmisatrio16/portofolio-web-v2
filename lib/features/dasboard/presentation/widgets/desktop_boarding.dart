import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:portofolio_web/features/dasboard/presentation/controllers/home_controller.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/iconify_assets.dart';

import 'dart:js' as js;

class DesktopBoarding extends StatelessWidget {
  const DesktopBoarding({
    super.key,
    required this.screenwidth,
    required this.controller,
  });

  final double screenwidth;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: screenwidth,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: 120,
        ),
        child: Wrap(
          runAlignment: WrapAlignment.spaceAround,
          spacing: 160,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 26, vertical: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                        fontFamily: "MontserratAlternates",
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: screenwidth >= 600 ? 36 : 28),
                  ).animate().fade(duration: 1000.ms),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Muhammad Hilmi Satrio",
                    style: TextStyle(
                        fontFamily: "MontserratAlternates",
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: screenwidth >= 600 ? 42 : 34),
                  ).animate().fadeIn(duration: 1000.ms, delay: 500.ms),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Mobile Developer",
                    style: TextStyle(
                        fontFamily: "MontserratAlternates",
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: screenwidth >= 600 ? 36 : 28),
                  ).animate().fade(duration: 1000.ms, delay: 1000.ms),
                ],
              ),
            ),
            Image.asset(
              "assets/avatar_face.png",
              width: 400,
              height: 400,
            ).animate().fade(duration: 1200.ms, delay: 800.ms)
          ],
        ),
      ),
      Positioned(
        right: 0,
        top: 100,
        child: Row(
          children: [
            Obx(() => Visibility(
                visible: controller.isHoveredContact.value,
                child: Row(children: [
                  InkWell(
                    onTap: () {
                      js.context.callMethod(
                          'open', ["https://www.linkedin.com/in/mhilmisatrio"]);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                              width: screenwidth >= 600
                                  ? 100
                                  : 64, // Ukuran wajib agar terlihat
                              height: screenwidth >= 600 ? 64 : 54,
                              alignment: Alignment.center,
                              child: Iconify(
                                iconLinkedin,
                                size: 64,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod(
                          'open', ["https://github.com/hilmisatrio16"]);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                              width: screenwidth >= 600
                                  ? 100
                                  : 64, // Ukuran wajib agar terlihat
                              height: screenwidth >= 600 ? 64 : 54,
                              alignment: Alignment.center,
                              child: Iconify(
                                iconGithub,
                                size: 64,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  ),
                ]))),
            SizedBox(
              width: 32,
            ),
            GestureDetector(
              onTap: () {
                if (controller.isHoveredContact.value == false) {
                  controller.setHovered(true);
                } else {
                  controller.setHovered(false);
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                decoration: BoxDecoration(
                    color: greenPrimary,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10))),
                child: Iconify(
                  iconSupportContact,
                  color: Colors.white,
                  size: 38,
                ),
              ).animate().slideX(
                  begin: 1,
                  end: 0,
                  duration: 800.ms,
                  curve: Curves.easeOut,
                  delay: 1600.ms),
            ),
          ],
        ),
      ),
      Positioned(
        left: 0,
        bottom: 20,
        child: Image.asset("assets/dot_grid.png"),
      )
          .animate()
          .fade(duration: 1000.ms, delay: 1400.ms)
          .slideX(begin: -1, end: 0, duration: 800.ms, curve: Curves.easeOut),
    ]);
  }
}
