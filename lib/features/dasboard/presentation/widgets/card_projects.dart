import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/iconify_assets.dart';
import '../../../../core/constants/nav_items.dart';

class CardProjects extends StatelessWidget {
  const CardProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348,
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
                      width: 340,
                      height: 320,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      Text("Android Development System MVVM",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        dummyText,
                        maxLines: 5,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                        softWrap: true,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
                  child: Row(
                    children: [
                      Wrap(
                        spacing: 8,
                        children: [
                          Iconify(
                            iconAndroid,
                            color: Colors.white,
                            size: 28,
                          ),
                          Iconify(
                            iconKotin,
                            color: Colors.white,
                            size: 28,
                          ),
                          Iconify(
                            iconAndroidStudio,
                            color: Colors.white,
                            size: 28,
                          )
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 26, vertical: 4),
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
                            "more",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "MontserratAlternates",
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
