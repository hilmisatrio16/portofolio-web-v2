import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/constant_values.dart';
import '../../../../core/constants/iconify_assets.dart';

class MobileBoxAndCertificate extends StatelessWidget {
  const MobileBoxAndCertificate({
    super.key,
    required this.screenwidth,
  });

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //certificate
      Container(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 8),
        width: screenwidth,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Certificates",
                style: TextStyle(
                    fontSize: 24,
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
                  Column(children: [
                    for (int i = 0; i < 2; i++)
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/android_images.png",
                                        width: 260,
                                        height: 160,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Android Experts",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white)),
                                        Text(
                                          "Dicoding Academy",
                                          maxLines: 5,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                  ]),
                  Column(
                    children: [
                      Iconify(
                        iconFoldUp,
                        size: 28,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Column(
                        children: scroll
                            .split('')
                            .map((char) => Text(
                                  char,
                                  style: TextStyle(
                                      fontSize: 24,
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
                        size: 28,
                        color: Colors.white,
                      ),
                    ],
                  )
                ]),
          ],
        ),
      ),
      //box message
      Container(
        width: screenwidth,
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
        alignment: Alignment.center,
        child: Container(
          height: 820,
          width: screenwidth,
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
                    "Contact me",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "MontserratAlternates",
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 84,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 42),
                  child: TextField(
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
                  onTap: () {},
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
    ]);
  }
}
