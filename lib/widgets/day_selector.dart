import 'package:flutter/material.dart';

import 'day_button.dart';

class DaySelector extends StatefulWidget {
  const DaySelector({super.key});

  @override
  State<DaySelector> createState() => _DaySelector();
}

class _DaySelector extends State<DaySelector> {
  int _selectedDayIndex = -1;
  String _selectedDate = '';

  void _onDaySelected(int index) {
    setState(() {
      _selectedDayIndex = index;
      _selectedDate = _dayData[index]['date']!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          _selectedDate.isNotEmpty
              ? 'Sept $_selectedDate, 2024'
              : 'Sept ${_dayData[0]['date']!}, 2024',
          style: const TextStyle(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Text(
          'Today',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _dayData.length,
            itemBuilder: (context, index) {
              final isSelected = _selectedDayIndex == index;
              return GestureDetector(
                onTap: () => _onDaySelected(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: 60,
                  child: DayButton(
                      day: _dayData[index]['day']!,
                      date: _dayData[index]['date']!,
                      isSelected: isSelected),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

final List<Map<String, String>> _dayData = [
  {
    'day': 'Thu',
    'date': '19',
  },
  {
    'day': 'Fri',
    'date': '20',
  },
  {
    'day': 'Sat',
    'date': '21',
  },
  {
    'day': 'Sun',
    'date': '22',
  },
  {
    'day': 'Mon',
    'date': '23',
  },
  {
    'day': 'Tue',
    'date': '24',
  },
  {
    'day': 'Wed',
    'date': '25',
  }
];
