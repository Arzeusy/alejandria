import 'package:alejandria/pages/home/widget/linear_calendar.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class DashboardAppbar extends StatelessWidget {
  final Color backgroundColor;
  final Widget button;

  const DashboardAppbar({
    Key? key,
    required this.backgroundColor,
    required this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('MMMM yyyy').format(now);

    return Container(
        color: backgroundColor,
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                button,
                Text(
                  formattedDate,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.access_time),
                  onPressed: () {
                    LinearCalendar.globalKey.currentState?.scrollToCurrentDay();
                  },
                  color: Colors.white,
                ),
              ],
            ),
            LinearCalendar()
          ],
        ));
  }
}
