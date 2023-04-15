import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final double widthValue;
  const Button(
      {Key? key,
      required this.text,
      this.widthValue = double.infinity,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        height: 50.0,
        width: widthValue,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFFBA944B),
          // gradient: const LinearGradient(
          //     colors: [
          //       Color(0xFF4268D3),
          //       Color(0xFF584CD1),
          //     ],
          //     begin: FractionalOffset(0.2, 0.0),
          //     end: FractionalOffset(1.0, 0.6),
          //     stops: [0.0, 0.6],
          //     tileMode: TileMode.clamp)
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 18.0, fontFamily: "Lato", color: Colors.white),
          ),
        ),
      ),
    );
  }
}
