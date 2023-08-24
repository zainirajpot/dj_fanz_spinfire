import 'package:dj_fanz_spinfire/home_page/bottam_bar_screens/bottam_packge_bar.dart';
 import 'package:dj_fanz_spinfire/widgets/app_color/colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerButtons extends StatelessWidget {
  final double? height;
  final double? width;
  final String text;
  ContainerButtons({super.key, this.height, this.width, required this.text});

  @override
  Widget build(BuildContext context) {
    var defaultHeight = Get.height * 0.06;
    var defaultWidth = Get.width * 0.9;
    return GestureDetector(
      onTap: () {
        //controller.updateSelectedIndex(index);
        Get.to(PackgeBar());
      },
      child: Container(
        height: height ?? defaultHeight, // Use provided height or default
        width: width ?? defaultWidth,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          gradient: LinearGradient(
            colors: [
              AppColors.linearMusterdB,
              AppColors.linearOrangeB,
              AppColors.linearRedB,
            ],
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.otherText,
            ),
          ),
        ),
      ),
    );
  }
}
