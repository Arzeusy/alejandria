import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final double dividerThickness;
  final TextStyle textStyle;
  final Color dividerColor;

  const DividerWithText({
    super.key,
    required this.text,
    this.dividerThickness = 1,
    this.textStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    this.dividerColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: dividerThickness,
            color: dividerColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            text,
            style: textStyle.copyWith(color: dividerColor),
            selectionColor: dividerColor,
          ),
        ),
        Expanded(
          child: Divider(
            thickness: dividerThickness,
            color: dividerColor,
          ),
        ),
      ],
    );
  }
}
