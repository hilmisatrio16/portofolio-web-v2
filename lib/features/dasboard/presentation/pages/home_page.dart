import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portofolio_web/core/constants/constant_colors.dart';
import 'package:portofolio_web/features/dasboard/presentation/controllers/home_controller.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_article.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_box_and_certificate.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_navigation.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_profile.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_running_text.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_skills.dart';

import '../widgets/desktop_boarding.dart';
import '../widgets/desktop_box_and_certificate.dart';
import '../widgets/dekstop_running_text.dart';
import '../widgets/desktop_article.dart';
import '../widgets/desktop_navigation.dart';
import '../widgets/desktop_profile.dart';
import '../widgets/desktop_skills.dart';
import '../widgets/project.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    final screenwidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: blackPrimary,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Header nav
            Container(
              width: screenwidth,
              decoration: BoxDecoration(
                  color: blackSecondary,
                  border: Border(
                      bottom: BorderSide(color: Colors.white, width: 1))),
              padding: EdgeInsets.symmetric(horizontal: 38, vertical: 20),
              child: screenwidth >= 1000
                  ? DesktopNavigation()
                  : MobileNavigation(),
            ),
            //Wrap (welcome and profile photo)
            DesktopBoarding(
              screenwidth: screenwidth,
              controller: controller,
            ),
            SizedBox(
              height: 20,
            ),
            //running text
            screenwidth >= 600
                ? DekstopRunningText(screenwidth: screenwidth)
                : MobileRunningText(screenwidth: screenwidth),
            // profile
            screenwidth >= 600
                ? DesktopProfile(screenwidth: screenwidth)
                : MobileProfile(screenwidth: screenwidth),
            SizedBox(
              height: 64,
            ),
            // Wrap (article and search)
            screenwidth >= 600
                ? DesktopArticle(screenwidth: screenwidth)
                : MobileArticle(screenwidth: screenwidth),
            // Skills
            SizedBox(
              height: 64,
            ),
            screenwidth >= 600
                ? DesktopSkills(screenwidth: screenwidth)
                : MobileSkills(screenwidth: screenwidth),
            SizedBox(
              height: 64,
            ),
            // Projects
            Project(),

            SizedBox(
              height: 32,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Image.asset("assets/dot_grid.png")),
            // Wrap contact and certificate
            SizedBox(
              height: 32,
            ),
            screenwidth >= 600
                ? DesktopBoxAndCertificate(screenwidth: screenwidth)
                : MobileBoxAndCertificate(screenwidth: screenwidth),
            // Footer
            Container(
              alignment: Alignment.center,
              width: screenwidth,
              height: 100,
              decoration: BoxDecoration(
                color: blackSecondary,
              ),
              child: Text(
                "Created Using flutter in 2025 by @hilmisatrio",
                style: TextStyle(
                    fontFamily: "MontserratAlternates",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
