import 'package:alejandria/pages/home/widget/priority_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrioritySecction extends StatelessWidget {
  const PrioritySecction({Key? key}) : super(key: key);
// MediaQuery.of(context).size.width,
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
                flex: 1,
                child: PriorityCard(
                    icon: CupertinoIcons.star_fill,
                    height: 250.0,
                    title: "First Priority",
                    subtitle: '10 task',
                    backgroundColor: Color(0xFFADD8E6))),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    PriorityCard(
                        icon: CupertinoIcons.star_lefthalf_fill,
                        title: "Second Priority",
                        height: 115.0,
                        subtitle: '10 task',
                        backgroundColor: Color(0xFFC0E0E6)),
                    PriorityCard(
                        icon: CupertinoIcons.star,
                        title: "Third Priority",
                        height: 115.0,
                        subtitle: '10 task',
                        backgroundColor: Color(0xFF6B9FBD)),
                  ],
                ))
          ],
        ));
  }
}
