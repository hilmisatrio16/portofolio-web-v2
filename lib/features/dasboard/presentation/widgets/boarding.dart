import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/desktop_boarding.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/nav_items.dart';
import '../controllers/home_controller.dart' show HomeController;
import 'dart:html' as html;

class Boarding extends StatelessWidget {
  const Boarding({
    super.key,
    required this.screenwidth,
    required this.controller,
    required this.scrollToSection,
  });

  final double screenwidth;
  final HomeController controller;
  final void Function(int) scrollToSection;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      DesktopBoarding(
        screenwidth: screenwidth,
        controller: controller,
      ),
      Obx(() => Visibility(
          visible: controller.isVisibleMobileNav.value,
          child: Positioned(
            top: 0,
            child: Container(
              decoration: BoxDecoration(color: blackMetal),
              child: Column(
                children: [
                  for (int i = 0; i < headerNavMobile.length; i++)
                    InkWell(
                      onTap: () {
                        if (i == 5) {
                          QuickAlert.show(
                            onCancelBtnTap: () {
                              Navigator.pop(context);
                            },
                            onConfirmBtnTap: () {
                              downloadPdf();
                              Navigator.pop(context);
                            },
                            context: context,
                            type: QuickAlertType.confirm,
                            text: 'Are you still downloading this file?',
                            titleAlignment: TextAlign.center,
                            textAlignment: TextAlign.center,
                            confirmBtnText: 'Yes',
                            cancelBtnText: 'No',
                            confirmBtnColor: Colors.white,
                            backgroundColor: Colors.black,
                            // headerBackgroundColor: Colors.grey,
                            confirmBtnTextStyle: const TextStyle(
                              color: Colors.black,
                              fontFamily: "MontserratAlternates",
                              fontWeight: FontWeight.bold,
                            ),
                            cancelBtnTextStyle: const TextStyle(
                              color: Colors.white,
                              fontFamily: "MontserratAlternates",
                              fontWeight: FontWeight.bold,
                            ),
                            // barrierColor: Colors.white,
                            titleColor: Colors.white,
                            textColor: Colors.white,
                          );
                        } else {
                          scrollToSection(i);
                        }

                        controller.setVisibility();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(vertical: 2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                        width: screenwidth,
                        decoration: BoxDecoration(color: blackPrimary),
                        child: Text(
                          headerNavMobile[i],
                          style: TextStyle(
                              fontFamily: "MontserratAlternates",
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                      ),
                    )
                ],
              ),
            ).animate()
              ..fade(duration: 1000.ms) // Efek Fade
                  .slideY(
                      begin: 0,
                      end: 0.1,
                      duration: 1000.ms,
                      curve: Curves.easeOut),
          )))
    ]);
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
