import 'package:alejandria/shared/widget/task_card_circular.dart';
import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de datos para las tarjetas de tareas
    final List<TaskCardCircular> taskDataList = [
      const TaskCardCircular(
        backgroundColor: Color(0xFF416788),
        textColor: Color(0xFFADD8E6),
        title: 'Task 1',
        description: 'Words',
        progress: 0.6,
        progressText: '60%',
        icon: Icons.auto_graph_rounded,
      ),
      const TaskCardCircular(
        backgroundColor: Color(0xFFADD8E6),
        textColor: Color(0xFF416788),
        title: 'Task 2',
        description: 'Sentences',
        progress: 0.8,
        progressText: '80%',
        icon: Icons.workspace_premium_rounded,
      ),
      const TaskCardCircular(
        backgroundColor: Color(0xFF416788),
        textColor: Color(0xFFADD8E6),
        title: 'Task 1',
        description: 'Description 1',
        progress: 0.6,
        progressText: '60%',
        icon: Icons.star,
      ),
      const TaskCardCircular(
        backgroundColor: Color(0xFFADD8E6),
        textColor: Color(0xFF416788),
        title: 'Task 2',
        description: 'Description 2',
        progress: 0.8,
        progressText: '80%',
        icon: Icons.airplanemode_active,
      ),
    ];

    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: taskDataList.length,
        itemBuilder: (context, index) {
          final taskData = taskDataList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TaskCardCircular(
              backgroundColor: taskData.backgroundColor,
              textColor: taskData.textColor,
              title: taskData.title,
              description: taskData.description,
              progress: taskData.progress,
              progressText: taskData.progressText,
              icon: taskData.icon,
            ),
          );
        },
      ),
    );
  }
}
