import 'package:dj_fanz_spinfire/widgets/app_color/colors.dart';
import 'package:dj_fanz_spinfire/widgets/app_content/content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const List<Widget> fruits = <Widget>[
  Text(AppContent.asDj),
  Text(AppContent.artist),
];

class ToggleButton extends StatefulWidget {
  const ToggleButton({
    super.key,
  });

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  final List<bool> _selectedFruits = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: height * 0.06,
            width: width * 0.666,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              color: Color.fromARGB(210, 30, 30, 29),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 17),
              child: ToggleButtons(
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < _selectedFruits.length; i++) {
                      _selectedFruits[i] = i == index;
                    }
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(13)),
                selectedColor: AppColors.otherText,
                fillColor: Colors.transparent,
                borderColor: Colors.transparent,
                renderBorder: false,
                splashColor: Colors.transparent,
                color: AppColors.otherText,
                constraints: const BoxConstraints(),
                isSelected: _selectedFruits,
                children: List.generate(fruits.length, (index) {
                  return Container(
                    height: height * 0.05,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      gradient: _selectedFruits[index]
                          ? const LinearGradient(
                              colors: [
                                AppColors.linearMusterdB,
                                AppColors.linearOrangeB,
                                AppColors.linearRedB,
                              ],
                            )
                          : null,
                    ),
                    child: Center(child: fruits[index]),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
