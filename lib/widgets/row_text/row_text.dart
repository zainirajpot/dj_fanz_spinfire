import 'package:dj_fanz_spinfire/widgets/app_color/colors.dart';
import 'package:dj_fanz_spinfire/widgets/app_content/content.dart';
import 'package:dj_fanz_spinfire/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowText extends StatelessWidget {
  const RowText({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: height * 0.001,
          width: width * 0.1,
          color: AppColors.otherText,
        ),
        const TextWidgets(
          text: AppContent.continueWith,
          size: 16,
        ),
        Container(
          height: height * 0.001,
          width: width * 0.1,
          color: AppColors.otherText,
        ),
      ],
    );
  }
}
