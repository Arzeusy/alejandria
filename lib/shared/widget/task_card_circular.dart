import 'package:alejandria/shared/widget/circular_achievement.dart';
import 'package:flutter/material.dart';

class TaskCardCircular extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String title;
  final String description;
  final double progress;
  final String progressText;
  final IconData icon;

  const TaskCardCircular({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    required this.title,
    required this.description,
    required this.progress,
    required this.progressText,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(minWidth: 150.0),
        child: Card(
            color: backgroundColor,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      color: textColor,
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 4),
                  CircularAchievement(
                      progress: progress,
                      icon: icon,
                      backgroundColor: backgroundColor,
                      width: 60,
                      height: 60,
                      progressBarColor: textColor),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: textColor,
                        size: 24,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        description,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
