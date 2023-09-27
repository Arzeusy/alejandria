import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final Widget component;
  final String titleSection;

  const SectionWidget({
    Key? key,
    required this.titleSection,
    required this.component,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, left: 15.0),
              child: Text(
                titleSection,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            )),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: component,
          ),
        )
      ],
    );
  }
}
