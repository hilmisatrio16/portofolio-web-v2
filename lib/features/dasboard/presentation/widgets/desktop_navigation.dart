import 'dart:typed_data';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:portofolio_web/core/constants/constant_colors.dart';

import '../../../../core/constants/iconify_assets.dart';
import '../../../../core/constants/nav_items.dart';
import 'dart:html' as html;

class DesktopNavigation extends StatelessWidget {
  const DesktopNavigation({
    super.key,
    required this.scrollToSection,
  });

  final void Function(int) scrollToSection;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < headerNav.length; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: TextButton(
              onPressed: () {
                scrollToSection(i);
              },
              child: Text(
                headerNav[i],
                style: TextStyle(
                    fontFamily: "MontserratAlternates",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 24),
              ),
            ),
          ),
        Spacer(),
        //Whatsapp Button
        InkWell(
          onTap: () {
            AwesomeDialog(
              width: MediaQuery.of(context).size.width / 3,
              dialogBackgroundColor: blackMetal,
              context: context,
              animType: AnimType.scale,
              dialogType: DialogType.info,
              body: Container(
                padding: EdgeInsets.symmetric(vertical: 46, horizontal: 36),
                child: Text(
                  'Whatsapp under progress',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "MontserratAlternates",
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 28),
                ),
              ),
              btnOkOnPress: () {},
            ).show();
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white, // Warna border
                width: 1, // Ketebalan border
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(children: [
              Text(
                contactWA,
                style: TextStyle(
                    fontFamily: "MontserratAlternates",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              SizedBox(
                width: 10,
              ),
              Iconify(
                iconWA,
                size: 32,
                color: Colors.white,
              )
            ]),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        //Hire Me
        InkWell(
          onTap: () {
            AwesomeDialog(
              width: MediaQuery.of(context).size.width / 3,
              dialogBackgroundColor: blackMetal,
              context: context,
              animType: AnimType.scale,
              dialogType: DialogType.noHeader,
              body: Container(
                padding: EdgeInsets.symmetric(vertical: 46, horizontal: 36),
                child: Text(
                  'Are you still downloading this file?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "MontserratAlternates",
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 28),
                ),
              ),
              title: 'Download Comfirmation',
              desc: 'Are you still downloading this file?',
              buttonsTextStyle: TextStyle(
                  fontSize: 24,
                  fontFamily: "MontserratAlternates",
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              btnCancelOnPress: () {},
              btnOkOnPress: () {
                downloadPdf();
              },
            ).show();
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white, // Warna border
                width: 1, // Ketebalan border
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(children: [
              Text(
                hire,
                style: TextStyle(
                    fontFamily: "MontserratAlternates",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              Text(
                me,
                style: TextStyle(
                    fontFamily: "MontserratAlternates",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ]),
          ),
        )
      ],
    );
  }

  void downloadPdf() async {
    // 1️ Baca file dari assets
    ByteData bytes = await rootBundle.load("assets/my_cv.pdf");
    Uint8List pdfBytes = bytes.buffer.asUint8List();

    // 2️ Buat Blob dari file PDF
    final blob = html.Blob([pdfBytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);

    // 3️ Buat link download dan klik otomatis
    html.AnchorElement anchor = html.AnchorElement(href: url)
      ..setAttribute("download", "my_cv.pdf") // Nama file saat didownload
      ..click();

    // 4️ Hapus URL Blob setelah digunakan untuk menghemat memori
    html.Url.revokeObjectUrl(url);
  }
}
