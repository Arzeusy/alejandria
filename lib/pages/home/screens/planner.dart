import 'package:alejandria/pages/home/widget/priority_secction.dart';
import 'package:alejandria/pages/home/widget/schedule_task.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class PlannerPage extends StatefulWidget {
  const PlannerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PlannerPage> createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage>
    with SingleTickerProviderStateMixin {
  String formattedDate = DateFormat('dd MMMM yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xFF416788),
            body: SingleChildScrollView(
                child: Column(children: [
              Container(
                  padding:
                      const EdgeInsets.only(top: 30.0, right: 20.0, left: 5.0),
                  color: const Color(0xFF416788),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: Colors.white,
                          ),
                          Text(
                            formattedDate,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Every Day Your",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 45.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Task Plan",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 45.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const PrioritySecction(),
              const SizedBox(
                height: 20.0,
              ),
              const ScheduleTask(),
              const ScheduleTask(),
              const ScheduleTask(),
              const ScheduleTask(),
              const ScheduleTask(),
            ]))));
  }
}
