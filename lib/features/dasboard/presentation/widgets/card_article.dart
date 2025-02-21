import 'package:flutter/material.dart';

import '../../../../core/constants/nav_items.dart';

class DesktopCardArticle extends StatelessWidget {
  const DesktopCardArticle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/android_images.png",
                width: 220,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Android Development System MVVM",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    dummyText,
                    maxLines: 4,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                    softWrap: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
