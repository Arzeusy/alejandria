import 'dart:math';
import 'package:alejandria/shared/Components/side_menu.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  final Widget screen;
  final bool isSideMenuClosed;
  final Animation<double> animation;
  final Animation<double> scalAnimation;

  const MenuWidget(
      {Key? key,
      required this.screen,
      required this.isSideMenuClosed,
      required this.animation,
      required this.scalAnimation})
      : super(key: key);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17203A),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: SafeArea(
          child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            width: 288,
            left: widget.isSideMenuClosed ? -288 : 0,
            height: MediaQuery.of(context).size.height,
            child: const SideMenu(),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(widget.animation.value -
                  30 * widget.animation.value * pi / 180),
            child: Transform.translate(
              offset: Offset(widget.animation.value * 265, 0),
              child: Transform.scale(
                scale: widget.scalAnimation.value,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  child: widget.screen,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
