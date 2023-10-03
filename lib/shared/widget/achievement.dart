import 'package:flutter/material.dart';
import 'circular_achievement.dart';

class AchievementWidget extends StatelessWidget {
  final String achievementName;
  final double progress;
  final IconData icon;
  final Color backgroundColor;
  final double width;
  final double height;
  final Color progressBarColor;

  const AchievementWidget({
    Key? key,
    required this.achievementName,
    required this.progress,
    required this.icon,
    required this.backgroundColor,
    required this.width,
    required this.height,
    required this.progressBarColor,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircularAchievement(
          backgroundColor: backgroundColor,
          progress: progress,
          icon: icon,
          width: width,
          height: height,
          progressBarColor: progressBarColor
        ),
        const SizedBox(height: 8.0),
        Text(
          achievementName,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}