import 'package:flutter/material.dart';

class SignupTextBtn extends StatelessWidget {
  final String text;
  final String boldText;
  final VoidCallback onPress;

  const SignupTextBtn({
    Key? key,
    required this.text,
    required this.boldText,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: onPress,
            child: Center(
              child: Text(
                boldText,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          )
        ]);
  }
}
