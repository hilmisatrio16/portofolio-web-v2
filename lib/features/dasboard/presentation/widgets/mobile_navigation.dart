import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:portofolio_web/features/dasboard/presentation/controllers/home_controller.dart';

import '../../../../core/constants/iconify_assets.dart';
import '../../../../core/constants/nav_items.dart';

class MobileNavigation extends StatelessWidget {
  const MobileNavigation({
    super.key,
    required this.controller,
  });
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            controller.setVisibility();
          },
          child: Icon(
            Icons.menu,
            size: 36,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
