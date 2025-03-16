import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:portofolio_web/core/constants/iconify_assets.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../domain/entities/experience.dart';

class MobileCardExperience extends StatelessWidget {
  const MobileCardExperience({
    super.key,
    required this.experience,
  });
  final Experience experience;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 1600,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter, // Mulai dari atas
          end: Alignment.bottomCenter, // Sampai bawah
          colors: [
            Colors.white.withOpacity(0.4), //
            Colors.white.withOpacity(0.1), // Transparan di bawah
          ],
          stops: [0.0, 1.0], // Atur transisi warna
        ), // Transparan putih
      ),
      child: ClipRRect(
        // Diperlukan untuk memotong blur sesuai radius
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40), // Efek blur
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                    ),
                    color: greenPrimary,
                  ),
                  child: Text(
                    experience.role,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "MontserratAlternates",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 3),
                          blurRadius: 4,
                          color: Color(0xBF000000),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(32, 38, 32, 16),
                  child: Text(
                    experience.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 3),
                          blurRadius: 4,
                          color: Color(0xBF000000),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                  ),
                  child: Text(
                    experience.date,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 3),
                          blurRadius: 4,
                          color: Color(0xBF000000),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                  ),
                  child: Column(
                    children: [
                      for (int i = 0; i < experience.jobs.length; i++)
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              Iconify(
                                iconDotFill,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  experience.jobs[i],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  softWrap:
                                      true, // Agar teks turun ke bawah jika panjang
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
                SizedBox(height: 84),
                Spacer(),
                Container(
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                    ),
                    color: greenPrimary,
                  ),
                ),
              ],
            ),
            Positioned(
              left: -60,
              bottom: 42,
              child: Image.asset("assets/dot_grid.png"),
            ),
          ]),
        ),
      ),
    );
  }
}
