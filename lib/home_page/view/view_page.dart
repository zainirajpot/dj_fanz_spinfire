import 'dart:io';
import 'package:dj_fanz_spinfire/home_page/controller/imgecontroller.dart';
import 'package:dj_fanz_spinfire/widgets/app_color/colors.dart';
import 'package:dj_fanz_spinfire/widgets/app_content/content.dart';
import 'package:dj_fanz_spinfire/widgets/app_icons/icons.dart';
import 'package:dj_fanz_spinfire/widgets/button/button.dart';
import 'package:dj_fanz_spinfire/widgets/text/text.dart';
import 'package:dj_fanz_spinfire/widgets/text_field/textfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class ViewPage extends StatelessWidget {
  ImagePickerController controller = Get.put(ImagePickerController());

  ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Center(
          child: TextWidgets(
            text: AppContent.home,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 22),
            child: AppIcons.shopping,
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Obx(() {
          return Column(
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              PhotoText(),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.329,
                width: width * 0.865,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColors.lineartextfield),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.04),
                    Center(
                      child: CircleAvatar(
                        radius: height * 0.09,
                        backgroundColor: AppColors.circle,
                        child: CircleAvatar(
                          backgroundColor: AppColors.circleAvatar,
                          radius: height * 0.08,
                          backgroundImage: controller.imagePath.isNotEmpty
                              ? FileImage(File(controller.imagePath.toString()))
                              : null,
                          child: Column(
                            children: [
                              if (controller.imagePath.isEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: IconButton(
                                    onPressed: () {
                                      controller.getImage(ImageSource.camera);
                                    },
                                    icon: AppIcons.camera,
                                  ),
                                ),
                              Row(
                                children: [
                                  if (controller.imagePath.isEmpty)
                                    TextButton(
                                      onPressed: () {
                                        controller
                                            .getImage(ImageSource.gallery);
                                      },
                                      child: const Text(
                                        AppContent.Upload,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.upload,
                                          decoration: TextDecoration.underline,
                                          decorationThickness: 3,
                                          decorationColor: AppColors.upload,
                                        ),
                                      ),
                                    ),
                                  if (controller.imagePath.isEmpty)
                                    const Text(
                                      AppContent.dragHere,
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.otherText),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Center(
                      child: ContainerButtons(
                        text: AppContent.saveAnd,
                        width: width * 0.455,
                        height: height * 0.0533,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const PhotoText(text: AppContent.tellUs),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.333,
                width: width * 0.865,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColors.lineartextfield),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        hintText: AppContent.first,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      CustomTextFormField(
                        hintText: AppContent.last,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      CustomTextFormField(
                        hintText: AppContent.country,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Center(
                        child: ContainerButtons(
                          text: AppContent.saveAnd,
                          width: width * 0.455,
                          height: height * 0.0533,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: 3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.bottomRight,
                    transform: GradientRotation(BorderSide.strokeAlignInside),
                    colors: [
                      Color.fromARGB(0, 100, 97, 97),
                      Color.fromARGB(113, 96, 91, 91),
                    ],
                    stops: [
                      0.1,
                      0.99,
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
