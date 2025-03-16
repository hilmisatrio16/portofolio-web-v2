import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/constant_values.dart';
import '../../../../core/constants/iconify_assets.dart';

class MobileBoxAndCertificate extends StatelessWidget {
  const MobileBoxAndCertificate({
    super.key,
    required this.screenwidth,
    required this.navbarKeys,
  });

  final double screenwidth;
  final List<GlobalKey<State<StatefulWidget>>> navbarKeys;

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
                  Flexible(
                      child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 1.6,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.vertical,
                      autoPlay: true,
                      height: 460,
                      viewportFraction: 0.5,
                    ),
                    items: certificates,
                  )),
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
