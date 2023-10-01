import 'package:alejandria/pages/home/widget/priority_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrioritySecction extends StatelessWidget {
  const PrioritySecction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: PriorityCard(
                    icon: CupertinoIcons.add_circled_solid,
                    title: "First Priority",
                    subtitle: '10 task',
                    backgroundColor: Colors.green[200] ?? Colors.white)),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    PriorityCard(
                        icon: CupertinoIcons.add_circled_solid,
                        title: "Second Priority",
                        subtitle: '10 task',
                        backgroundColor: Color(0xFF2AC9E7)),
                    PriorityCard(
                        icon: CupertinoIcons.add_circled_solid,
                        title: "Third Priority",
                        subtitle: '10 task',
                        backgroundColor: Color(0xffCBBFD7)),
                  ],
                ))
          ],
        ));
  }
}
