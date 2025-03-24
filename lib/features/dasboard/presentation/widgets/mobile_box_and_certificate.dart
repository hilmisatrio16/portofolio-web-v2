import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:quickalert/models/quickalert_animtype.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

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
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController contentController = TextEditingController();
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
                    controller: emailController,
                    style: TextStyle(
                        fontFamily: "MontserratAlternates", fontSize: 14),
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
                    controller: nameController,
                    style: TextStyle(
                        fontFamily: "MontserratAlternates", fontSize: 14),
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
                      hintText: 'type your name...',
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
                    controller: contentController,
                    style: TextStyle(
                        fontFamily: "MontserratAlternates", fontSize: 14),
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
                  onTap: () async {
                    if (emailController.text.isNotEmpty &&
                        nameController.text.isNotEmpty &&
                        contentController.text.isNotEmpty) {
                      Map<String, dynamic> templateParams = {
                        'name': nameController.text,
                        'message': contentController.text,
                        'email': emailController.text
                      };
                      var response;
                      try {
                        response = await emailjs.send(
                          'service_qkt7zrk',
                          'template_bmhoq7m',
                          templateParams,
                          const emailjs.Options(
                            publicKey: 'ozSFQqRcTJXLTL24j',
                            privateKey: 'RIuaKPJ2Emesi82ikPbE7',
                          ),
                        );

                        QuickAlert.show(
                            // ignore: use_build_context_synchronously
                            context: context,
                            type: QuickAlertType.success,
                            text: 'Success to send the message.',
                            animType: QuickAlertAnimType.scale,
                            confirmBtnTextStyle: const TextStyle(
                              fontFamily: "MontserratAlternates",
                              fontWeight: FontWeight.bold,
                            ),
                            //ukuran alert disesuaikan sehingga responsive di mobile maupun dekstop
                            width: 400);
                        emailController.text = '';
                        nameController.text = '';
                        contentController.text = '';
                      } catch (error) {
                        QuickAlert.show(
                            // ignore: use_build_context_synchronously
                            context: context,
                            type: QuickAlertType.error,
                            text: 'Failed to send the message.',
                            animType: QuickAlertAnimType.scale,
                            confirmBtnTextStyle: const TextStyle(
                              fontFamily: "MontserratAlternates",
                              fontWeight: FontWeight.bold,
                            ),
                            //ukuran alert disesuaikan sehingga responsive di mobile maupun dekstop
                            width: 400);
                      }
                    } else {
                      QuickAlert.show(
                          context: context,
                          type: QuickAlertType.warning,
                          text: 'Please fill in all fields before send!',
                          animType: QuickAlertAnimType.scale,
                          confirmBtnTextStyle: const TextStyle(
                            fontFamily: "MontserratAlternates",
                            fontWeight: FontWeight.bold,
                          ),
                          //ukuran alert disesuaikan sehingga responsive di mobile maupun dekstop
                          width: 400);
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
                      "send message",
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
