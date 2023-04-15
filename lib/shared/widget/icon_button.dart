import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final Color colorValue;
  final VoidCallback onPress;
  final IconData icon;
  final double sizeValue;
  const IconButtonWidget(
      {Key? key,
      required this.colorValue,
      required this.icon,
      this.sizeValue = 20.0,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(icon),
        color: colorValue,
        iconSize: sizeValue,
        onPressed: onPress);
  }
}
