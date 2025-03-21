import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/constant_values.dart';
import '../../../../core/constants/iconify_assets.dart';

import 'package:mailto/mailto.dart';

class DesktopBoxAndCertificate extends StatelessWidget {
  const DesktopBoxAndCertificate({
    super.key,
    required this.screenwidth,
    required this.navbarKeys,
  });

  final double screenwidth;
  final List<GlobalKey<State<StatefulWidget>>> navbarKeys;

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController subjectController = TextEditingController();
    final TextEditingController contentController = TextEditingController();
    return Wrap(children: [
      //box message
      Container(
        width: screenwidth / 2,
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
        alignment: Alignment.center,
        child: Container(
          height: 820,
          width: screenwidth / 2 - 200,
          decoration: BoxDecoration(
            color: blackOption,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Stack(children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                      ),
                      color: greenPrimary),
                  child: Text(
                    "Contact Me",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "MontserratAlternates",
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 84,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 42),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'type your email address...',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: "MontserratAlternates",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 42),
                  child: TextField(
                    controller: subjectController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'type your subject...',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: "MontserratAlternates",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 42),
                  child: TextField(
                    maxLines: 7,
                    controller: contentController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'type your message...',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: "MontserratAlternates",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                InkWell(
                  onTap: () {
                    if (emailController.text.isNotEmpty &&
                        subjectController.text.isNotEmpty &&
                        contentController.text.isNotEmpty) {
                      launchMailto(emailController.text, subjectController.text,
                          subjectController.text);
                    } else {
                      AwesomeDialog(
                        width: MediaQuery.of(context).size.width / 3,
                        dialogBackgroundColor: blackMetal,
                        context: context,
                        animType: AnimType.scale,
                        dialogType: DialogType.noHeader,
                        body: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 46, horizontal: 36),
                          child: Text(
                            'Please fill in all fields before send!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "MontserratAlternates",
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 28),
                          ),
                        ),
                        title: 'Warning to fill form',
                        desc: 'Please fill in all fields before send!',
                        buttonsTextStyle: TextStyle(
                            fontSize: 24,
                            fontFamily: "MontserratAlternates",
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                        btnOkOnPress: () {},
                      ).show();
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 8),
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
                      "send",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "MontserratAlternates",
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                      ),
                      color: greenPrimary),
                ),
              ],
            ),
            Positioned(
              left: -60,
              bottom: 42,
              child: Image.asset("assets/dot_grid.png"),
            )
          ]),
        ),
      ),
      //certificate
      Container(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 8),
        width: screenwidth / 2,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Certificates",
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: "MontserratAlternates",
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 32,
                children: [
                  Flexible(
                      child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 1.6,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.vertical,
                      autoPlay: true,
                      height: 740,
                      viewportFraction: 0.5,
                    ),
                    items: certificates,
                  )),
                  // Column(children: [
                  //   for (int i = 0; i < 2; i++) CardCertificate(),
                  // ]),
                  Column(
                    children: [
                      Iconify(
                        iconFoldUp,
                        size: 42,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 46,
                      ),
                      Column(
                        children: scroll
                            .split('')
                            .map((char) => Text(
                                  char,
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontFamily: "MontserratAlternates",
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ))
                            .toList(),
                      ),
                      SizedBox(
                        height: 46,
                      ),
                      Iconify(
                        iconFoldDown,
                        size: 42,
                        color: Colors.white,
                      ),
                    ],
                  )
                ]),
          ],
        ),
      )
    ]);
  }

  launchMailto(String email, String subject, String content) async {
    try {
      final mailtoLink = Mailto(
        to: ['muhhilmisatrio@gmail.com'],
        subject: subject,
        body: content,
      );
      // ignore: deprecated_member_use
      await launch('$mailtoLink');
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
