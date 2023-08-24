import 'package:dj_fanz_spinfire/widgets/app_color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RowContainer extends StatelessWidget {
  final SvgPicture svg;
  const RowContainer({super.key, required this.svg});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      height: height * 0.06,
      width: width * 0.14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.lineartextfield,
      ),
      child: Transform.scale(scale: 0.4, child: svg),
    );
  }
}

// class ExpandContainer extends StatelessWidget {
//   final Widget child;
//   const ExpandContainer({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 4,
//       child: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(22),
//             color: AppColors.lineartextfield),
//       ),
//     );
//   }
// }
