import 'package:flutter/material.dart';

import 'textbox_field.dart';

// ignore: must_be_immutable
class PassWordField extends StatefulWidget {
  final IconData noViewData = Icons.visibility_outlined;
  final IconData viewData = Icons.visibility_off_outlined;
  TextEditingController? model;
  String text;

  PassWordField({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PassWordFieldState();
  }
}

class _PassWordFieldState extends State<PassWordField> {
  bool favState = false;

  void onPressedFav() {
    setState(() {
      favState = !favState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextBoxField(
      text: widget.text,
      model: widget.model,
      icon: favState ? widget.noViewData : widget.viewData,
      obscureTextVal: favState ? false : true,
      onPress: onPressedFav,
    );
  }
}
