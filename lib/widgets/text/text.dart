import 'package:dj_fanz_spinfire/widgets/app_color/colors.dart';
import 'package:dj_fanz_spinfire/widgets/app_content/content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TextWidgets extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? textfontWeight;
  final Color? color;
  const TextWidgets(
      {super.key,
      required this.text,
      this.size,
      this.textfontWeight,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? 22,
        fontWeight: textfontWeight ?? FontWeight.w400,
        color: color ?? AppColors.otherText,
      ),
    );
  }
}

class SkipText extends StatelessWidget {
  const SkipText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppContent.skip,
      style: TextStyle(
        fontSize: 12,
        color: AppColors.skipColor,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.skipColor,
        decorationThickness: 2,
      ),
    );
  }
}

class PhotoText extends StatelessWidget {
  final String? text;
  const PhotoText({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Padding(
      padding: EdgeInsets.only(left: height * 0.03, right: width * 0.07),
      child:  Row(
        children: [
          Expanded(
            flex: 1,
            child: TextWidgets(
              text: text??AppContent.photo,
              textfontWeight: FontWeight.w700,
              size: 20,
            ),
          ),
          SkipText(),
        ],
      ),
    );
  }
}
