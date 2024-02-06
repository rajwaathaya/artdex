import 'package:artdex/app/routes/app_pages.dart';
import 'package:artdex/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
  BottomNav({
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.only(left: 5, right: 5),
      height: 60,
      color: colorGrey,
      shape: CircularNotchedRectangle(),
      notchMargin: 3,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.home,
                color: index == 0 ? colorSecondary : Colors.white,
              ),
              onPressed: index == 0
                  ? null
                  : () {
                      Get.offNamed(Routes.HOME);
                    },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.person,
                color: index == 1 ? colorSecondary : Colors.white,
              ),
              onPressed: index == 1
                  ? null
                  : () {
                      Get.offNamed(Routes.PROFILE);
                    },
            ),
          ),
        ],
      ),
    );
  }
}
