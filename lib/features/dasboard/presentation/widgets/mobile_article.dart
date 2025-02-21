import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/mobile_card_article.dart';

import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/iconify_assets.dart';

class MobileArticle extends StatelessWidget {
  const MobileArticle({
    super.key,
    required this.screenwidth,
  });

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: screenwidth / 0.7,
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 32),
          alignment: Alignment.center,
          child: Flexible(
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Looking",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "MontserratAlternates",
                            fontSize: 38,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Iconify(
                        iconSearch,
                        color: Colors.white,
                        size: 108,
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Good Articles",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "MontserratAlternates",
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      shadows: [
                        Shadow(
                          offset: Offset(4, 4),
                          blurRadius: 8,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
        Container(
          width: screenwidth,
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
          child: Column(children: [
            Column(
              //change using number paginator or using manually combination getX to controller
              children: [for (int i = 0; i < 3; i++) MobileCardArticle()],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: greenPrimary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Iconify(
                          iconPrevious,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                for (int i = 0; i < 3; i++)
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "${i + 1}",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                SizedBox(
                  width: 16,
                ),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: greenPrimary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Iconify(
                          iconNext,
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            )
          ]),
        ),
      ],
    );
  }
}
