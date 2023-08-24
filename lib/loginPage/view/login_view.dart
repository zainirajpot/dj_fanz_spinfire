import 'package:dj_fanz_spinfire/loginPage/controller/controller.dart';
import 'package:dj_fanz_spinfire/widgets/app_color/colors.dart';
import 'package:dj_fanz_spinfire/widgets/app_content/content.dart';
import 'package:dj_fanz_spinfire/widgets/button/button.dart';
import 'package:dj_fanz_spinfire/widgets/row_container/row_conatiner.dart';
import 'package:dj_fanz_spinfire/widgets/row_text/row_text.dart';
import 'package:dj_fanz_spinfire/widgets/text/text.dart';
import 'package:dj_fanz_spinfire/widgets/text_field/textfiled.dart';
import 'package:dj_fanz_spinfire/widgets/toggle_button/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

//final LoginController controller = Get.put(LoginController());

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              child: Image.asset(
                'images/image 4.png',
                fit: BoxFit.fitHeight,
                colorBlendMode: BlendMode.softLight,
              ),
            ),
            Container(
              height: height * 0.586,
              width: width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [
                    AppColors.blurBack,
                    AppColors.blurBackGround,
                  ],
                  transform: GradientRotation(758.22 * 0.454533),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.07,
                    ),
                    Center(child: SvgPicture.asset('images/frstVec.svg')),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Center(child: SvgPicture.asset('images/SpinFire.svg')),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    // ContainerT(index: 0, text: AppContent.email,),
                    // ToggleConatiner(
                    // ),
                    // ToggleButtonsSample(title: 'awfsf'),
                    //  const toglecontainers(),
                    const ToggleButton(),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    const Center(
                      child: TextWidgets(
                        text: AppContent.welcome,
                        textfontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Center(
                      child: TextWidgets(
                        text: AppContent.requestedsong,
                        textfontWeight: FontWeight.w500,
                        color: AppColors.textcolor,
                        size: 13,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    CustomTextFormField(
                      hintText: AppContent.yourname,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CustomTextFormField(
                      hintText: AppContent.password,
                      icons: const Icon(Icons.visibility_off),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CustomTextFormField(
                      hintText: AppContent.confirmP,
                      icons: const Icon(Icons.visibility_off),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    ContainerButtons(text: AppContent.signUp),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    const RowText(),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RowContainer(
                            svg: SvgPicture.asset('images/google.svg')),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        RowContainer(svg: SvgPicture.asset('images/apple.svg')),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        RowContainer(svg: SvgPicture.asset('images/fb.svg')),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidgets(
                          text: AppContent.allready,
                          size: 14,
                        ),
                        TextWidgets(
                          text: AppContent.login,
                          size: 14,
                          color: Colors.red,
                          textfontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
