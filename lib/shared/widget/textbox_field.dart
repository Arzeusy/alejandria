import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextBoxField extends StatelessWidget {
  String text;
  TextEditingController? model;
  IconData? icon;
  bool obscureTextVal = false;
  final VoidCallback onPress;

  TextBoxField(
      {Key? key,
      required this.text,
      this.model,
      this.icon,
      required this.obscureTextVal,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: _model.textController1,
      autofocus: true,
      obscureText: obscureTextVal,
      decoration: InputDecoration(
          labelText: text,
          labelStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.redAccent,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.redAccent,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          suffixIcon: InkWell(
            onTap: onPress,
            focusNode: FocusNode(skipTraversal: true),
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          )),
      style: const TextStyle(
        color: Colors.white,
        // fontFamily: 'Inter',
      ),
      textAlign: TextAlign.start,
      // validator: _model.textController1Validator.asValidator(context),
    );
  }
}
