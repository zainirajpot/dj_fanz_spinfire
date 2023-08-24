import 'package:dj_fanz_spinfire/home_page/bottam_bar_screens/bottam_screens.dart';
import 'package:dj_fanz_spinfire/home_page/view/view_page.dart';
import 'package:dj_fanz_spinfire/home_page/controller/imgecontroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PackgeBar extends StatefulWidget {
  const PackgeBar({super.key});

  @override
  State<PackgeBar> createState() => _PackgeBarState();
}

class _PackgeBarState extends State<PackgeBar> {
  ImagePickerController controller = Get.put(ImagePickerController());

  // @override
  // void initState() {
  //   super.initState();
  // }
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        ViewPage(),
        const Screen2(),
        const Screen3(),
        const Screen4(),
        const Screen5(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(
            CupertinoIcons.home,
            size: 20,
          ),
          title: ("Home"),
          activeColorPrimary: Colors.red,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            CupertinoIcons.music_note_2,
            size: 20,
          ),
          title: ("Settings"),
          activeColorPrimary: Colors.red,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.message_outlined,
            size: 20,
          ),
          title: ("Se"),
          activeColorPrimary: Colors.red,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.notifications_none,
            size: 20,
          ),
          title: ("bb"),
          activeColorPrimary: Colors.red,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.line_axis_rounded,
            size: 20,
          ),
          title: ("cc"),
          activeColorPrimary: Colors.red,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.black,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        // decoration: const NavBarDecoration(
        //   borderRadius: BorderRadius.vertical(top: Radius.circular(33)),
        //   colorBehindNavBar: Colors.red,
        // ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1,
      ),
    );
  }
}
