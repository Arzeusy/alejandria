import 'package:alejandria/shared/function/rive_asset.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideMenutile extends StatelessWidget {
  const SideMenutile({
    super.key,
    required this.menu,
    required this.press,
    required this.riveonInit,
    required this.isActive,
  });

  final RiveAsset menu;
  final VoidCallback press;
  final ValueChanged<Artboard> riveonInit;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        Stack(
          children: [
            AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
                height: 56.0,
                width: isActive ? 288.0 : 0,
                left: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff6792ff),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                )),
            ListTile(
              onTap: press,
              leading: SizedBox(
                height: 34.0,
                width: 34.0,
                child: RiveAnimation.asset(
                  menu.src,
                  artboard: menu.artboard,
                  onInit: riveonInit,
                ),
              ),
              title: Text(
                menu.title,
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        )
      ],
    );
  }
}
