import 'package:flutter/cupertino.dart';
import 'package:task_schedule/widgets/task_card.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksList();
}

class _TasksList extends State<TasksList> {
  int _selectedTaskIndex = -1;

  void _onTaskSelected(int index) {
    setState(() {
      _selectedTaskIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
          physics: const PageScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: _taskData.length,
          itemBuilder: (context, index) {
            final isSelected = _selectedTaskIndex == index;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: GestureDetector(
                onTap: () => _onTaskSelected(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: isSelected ? 150 : 115,
                  child: taskCard(
                    isSelected: isSelected,
                    title: _taskData[index]['title']!,
                    content: _taskData[index]['content']!,
                    time: _taskData[index]['time']!,
                  ),
                ),
              ),
            );
          }),
    );
  }
}

final List<Map<String, String>> _taskData = [
  {
    'title': 'Wakeup',
    'content': 'Early Wakeup from bed and fresh',
    'time': '7:00 AM',
  },
  {
    'title': 'Morning Exercise',
    'content': '4 types of exercise',
    'time': '8:00 AM',
  },
  {
    'title': 'Meeting',
    'content': 'Zoom Call, Discus team task for the day',
    'time': '9:00 AM',
  },
  {
    'title': 'Breakfast',
    'content': 'Morning breakfast with bread, banana, egg, and tea',
    'time': '10:00 AM',
  },
];
