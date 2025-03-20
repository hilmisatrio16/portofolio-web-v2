import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:portofolio_web/core/constants/constant_colors.dart';
import 'package:portofolio_web/core/constants/iconify_assets.dart';
import 'package:portofolio_web/core/constants/nav_items.dart';
import 'package:portofolio_web/features/dasboard/presentation/controllers/home_controller.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_article.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_box_and_certificate.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_card_experience.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_navigation.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_profile.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_running_text.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_skills.dart';

import '../../../../core/constants/constant_values.dart';
import '../widgets/boarding.dart';
import '../widgets/desktop_boarding.dart';
import '../widgets/desktop_box_and_certificate.dart';
import '../widgets/dekstop_running_text.dart';
import '../widgets/desktop_article.dart';
import '../widgets/desktop_card_experience.dart';
import '../widgets/desktop_navigation.dart';
import '../widgets/desktop_profile.dart';
import '../widgets/desktop_skills.dart';
import '../widgets/project.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollControl = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(5, (index) => GlobalKey());
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
                  ? DesktopNavigation(
                      scrollToSection: scrollToSection,
                    )
                  : MobileNavigation(controller: controller),
            ),
            //Wrap (welcome and profile photo)
            //Boarding
            Boarding(
              screenwidth: screenwidth,
              controller: controller,
              scrollToSection: scrollToSection,
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
                ? DesktopProfile(
                    screenwidth: screenwidth,
                    navbarKeys: navbarKeys,
                  )
                : MobileProfile(
                    screenwidth: screenwidth,
                    navbarKeys: navbarKeys,
                  ),
            SizedBox(
              height: 64,
            ),
            // Wrap (article and search)
            // screenwidth >= 600
            //     ? DesktopArticle(screenwidth: screenwidth)
            //     : MobileArticle(screenwidth: screenwidth),
            // Experiences
            Container(
              key: navbarKeys[2],
              margin: EdgeInsets.symmetric(horizontal: 36),
              child: Column(children: [
                //title
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 6),
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
                    "Experiences",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "MontserratAlternates",
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                // list experiences
                Wrap(
                    spacing: 36,
                    runSpacing: 42,
                    runAlignment: WrapAlignment.center,
                    children: [
                      for (int i = 0; i < experiences.length; i++)
                        screenwidth >= 600
                            ? DesktopCardExperience(experience: experiences[i])
                            : MobileCardExperience(
                                experience: experiences[i],
                              )
                    ]),
              ]),
            ),
            // Skills
            SizedBox(
              height: 64,
            ),
            screenwidth >= 600
                ? DesktopSkills(
                    screenwidth: screenwidth,
                    navbarKeys: navbarKeys,
                  )
                : MobileSkills(
                    screenwidth: screenwidth,
                    navbarKeys: navbarKeys,
                  ),
            SizedBox(
              height: 64,
            ),
            // Projects
            Project(
              navbarKeys: navbarKeys,
            ),

            SizedBox(
              height: 32,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Image.asset("assets/dot_grid.png")),
            // Wrap contact and certificate
            SizedBox(
              height: 32,
              key: navbarKeys[3],
            ),
            screenwidth >= 600
                ? DesktopBoxAndCertificate(
                    screenwidth: screenwidth,
                    navbarKeys: navbarKeys,
                  )
                : MobileBoxAndCertificate(
                    screenwidth: screenwidth,
                    navbarKeys: navbarKeys,
                  ),
            // Footer
            Container(
              alignment: Alignment.center,
              width: screenwidth,
              height: 160,
              decoration: BoxDecoration(
                color: blackSecondary,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Created Using flutter in 2025 by @hilmisatrio",
                      style: TextStyle(
                          fontFamily: "MontserratAlternates",
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Iconify(
                          iconFacebook,
                          color: Colors.white,
                          size: 42,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Iconify(
                          iconInstagramOutline,
                          color: Colors.white,
                          size: 42,
                        )
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 5) {
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
