import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String title;
  final String description;
  final double progress;
  final String progressText;
  final VoidCallback onPressed;

  const TaskCard({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    required this.title,
    required this.description,
    required this.progress,
    required this.progressText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    progressText,
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),
                const Spacer(),
                IconButton(
                  color: textColor,
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: onPressed,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(textColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(description),
                ],
              ),
            ),
          ],
        ));
  }
}
