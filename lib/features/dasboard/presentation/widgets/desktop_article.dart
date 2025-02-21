import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:portofolio_web/features/dasboard/presentation/widgets/card_article.dart';
import '../../../../core/constants/constant_colors.dart';
import '../../../../core/constants/iconify_assets.dart';

class DesktopArticle extends StatelessWidget {
  const DesktopArticle({
    super.key,
    required this.screenwidth,
  });

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: screenwidth / 2.5 * 1.5,
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
          child: Column(children: [
            Column(
              //change using number paginator or using manually combination getX to controller
              children: [for (int i = 0; i < 3; i++) DesktopCardArticle()],
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
        Container(
          width: screenwidth / 3.2,
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
          alignment: Alignment.center,
          child: Container(
            height: 780,
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
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                        ),
                        color: greenPrimary),
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
                        hintText: 'type here...',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontFamily: "MontserratAlternates",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 160,
                  ),
                  Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Looking",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "MontserratAlternates",
                                fontSize: 48,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Good Articles",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "MontserratAlternates",
                              fontSize: 54,
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
                      Positioned(
                          right: 40,
                          top: 2,
                          child: Iconify(
                            iconSearch,
                            color: Colors.white,
                            size: 108,
                          ))
                    ],
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
                left: -20,
                bottom: 42,
                child: Image.asset("assets/dot_grid.png"),
              )
            ]),
          ),
        )
      ],
    );
  }
}
