import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import '../../../../core/constants/iconify_assets.dart';
import '../../../../core/constants/nav_items.dart';

class MobileNavigation extends StatelessWidget {
  const MobileNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.menu,
          size: 36,
          color: Colors.white,
        )
      ],
    );
  }
}
