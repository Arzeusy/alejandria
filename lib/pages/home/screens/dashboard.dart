import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'package:alejandria/shared/Components/widget_menu.dart';
import 'package:alejandria/shared/function/rive_utils.dart';
import 'package:alejandria/shared/widget/menu_btn.dart';

import '../widget/dashboard_appbar.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scalAnimation;
  late SMIBool isSideBarClosed;

  bool isSideMenuClosed = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() {
        setState(() {});
      });

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
    scalAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void clickMenu() {
    isSideBarClosed.value = !isSideMenuClosed;

    if (isSideMenuClosed) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    setState(() {
      isSideMenuClosed = isSideBarClosed.value;
    });
  }

  void riveInit(artboard) {
    StateMachineController controller = RiveUtils.getRiveController(artboard,
        stateMachineName: "State Machine");
    isSideBarClosed = controller.findSMI("isOpen") as SMIBool;
    // Now it's easy to understand
    isSideBarClosed.value = true;
  }

  @override
  Widget build(BuildContext context) {
    return MenuWidget(
      isSideMenuClosed: isSideMenuClosed,
      animation: animation,
      scalAnimation: scalAnimation,
      press: clickMenu,
      screen: Scaffold(
          body: Column(
        children: [
          DashboardAppbar(
            backgroundColor: const Color(0xFF416788),
            button: MenuBtn(
              riveOnInit: riveInit,
              press: clickMenu,
            ),
          ),
        ],
      )),
    );
  }
}
