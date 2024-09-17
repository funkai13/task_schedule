import 'package:flutter/material.dart';

class DayButton extends StatelessWidget {
  final String day;
  final String date;
  final bool isSelected;

  const DayButton(
      {super.key,
      required this.day,
      required this.date,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
                color: isSelected ? Colors.blue : Colors.grey,
                fontSize: 18,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w400),
          ),
          Text(date,
              style: TextStyle(
                  color: isSelected ? Colors.blue : Colors.black,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: 18)),
        ],
      ),
    );
  }
}
