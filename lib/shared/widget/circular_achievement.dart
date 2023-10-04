import 'package:flutter/material.dart';

class CircularAchievement extends StatelessWidget {
  final double progress;
  final IconData icon;
  final Color backgroundColor;
  final double width;
  final double height;
  final Color progressBarColor;


  const CircularAchievement({
    Key? key,
    required this.progress,
    required this.icon,
    required this.backgroundColor,
    required this.width,
    required this.height,
    required this.progressBarColor,
  }): super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: width - 20.0,
              height: height - 20.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 0.4 * width,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: width,
              height: height,
              child: CircularProgressIndicator(
                value: progress,
                strokeWidth: 0.1 * width,
                valueColor: AlwaysStoppedAnimation<Color>(progressBarColor),
                backgroundColor:  const Color.fromARGB(110, 158, 158, 158),
              ),
            ),
          ),
        ],
      ),
    );
  }
}