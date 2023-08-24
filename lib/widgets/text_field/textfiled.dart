import 'package:dj_fanz_spinfire/widgets/app_color/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  // final Color textdarkcolor;
  final String hintText;
  final Icon? icons;

  CustomTextFormField({
    // required this.textdarkcolor,
    required this.hintText,
    this.icons,
  });
  //bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;

    return Container(
      height: height * 0.070,
      width: width * 0.9,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: AppColors.lineartextfield,
      ),
      child: TextFormField(
        //  obscureText: _obscureText,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: AppColors.textcolor, fontSize: 13),
          suffixIcon: icons,
          hintText: hintText,
          focusedBorder: const OutlineInputBorder(
            borderSide:  BorderSide(
              color: AppColors.border,
              strokeAlign: 7,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
          enabledBorder: OutlineInputBorder(
            borderSide:  const BorderSide(
              color: AppColors.border,
              strokeAlign: 7,
            ),
            borderRadius: BorderRadius.circular(12),

            // suffixIcon: GestureDetector(
            //   onTap: () {},
            //     onTap: () {
            //       setState(() {
            //         _obscureText = !_obscureText;
            //       });
            //     },
            //     child: Icon(
            //       _obscureText ? Icons.visibility : Icons.visibility_off,
            //       color: Colors.grey,
            //     ),
            // ),
          ),
        ),
      ),
    );
  }
}
