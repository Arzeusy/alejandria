import 'package:flutter/material.dart';
import 'package:alejandria/shared/function/utils.dart';

class LinearCalendar extends StatefulWidget {
  // ignore: library_private_types_in_public_api
  static final GlobalKey<_LinearCalendarState> globalKey = GlobalKey();

  LinearCalendar({
    Key? key,
  }) : super(key: globalKey);

  @override
  State<LinearCalendar> createState() => _LinearCalendarState();
}

class _LinearCalendarState extends State<LinearCalendar> {
  final ScrollController _scrollController = ScrollController();
  final int _currentIndex = 11;
  int index = 1;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollToCurrentDay();
    });
  }

  void scrollToCurrentDay() {
    index++;
    _scrollController.animateTo(
      _currentIndex * (30.0), // Adjust for the item width and margin
      duration:
          const Duration(milliseconds: 500), // Adjust the duration as needed
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    scrollToCurrentDay();

    DateTime currentDate = DateTime.now();
    int currentMonth = currentDate.month;
    DateTime startDate = currentDate.subtract(const Duration(days: 10));
    DateTime endDate = currentDate.add(const Duration(days: 10));
    List<Widget> dayWidgets = [];

    for (var day = startDate;
        day.isBefore(endDate);
        day = day.add(const Duration(days: 1))) {
      bool isCurrentDay = currentDate.day == day.day;
      bool isCurrentMonth = currentMonth == day.month;

      dayWidgets.add(Container(
        padding: const EdgeInsets.only(top: 10.0),
        width: 40.0,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        // padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Utils.getDayInitial(day.weekday),
              style: const TextStyle(
                  color: Color(0xFFADD8E6),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                width: 35,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: isCurrentDay
                      ? const Color(0xFFADD8E6)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    day.day.toString(),
                    style: TextStyle(
                      color: !isCurrentDay
                          ? Colors.white.withOpacity(isCurrentMonth ? 1 : 0.5)
                          : const Color(0xff0A2B3B),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ],
        ),
      ));
    }

    return SizedBox(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        itemCount: dayWidgets.length,
        itemBuilder: (context, index) {
          return dayWidgets[index];
        },
      ),
    );
  }
}
