import 'package:flutter/material.dart';

Widget taskCard({
  required String title,
  required String content,
  required String time,
  required bool isSelected,
}) {
  return GestureDetector(
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.grey.shade50,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 15,
                  color: isSelected ? Colors.white70 : Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(
              fontSize: 15,
              color: isSelected ? Colors.white70 : Colors.grey,
            ),
            softWrap: true,
          ),
        ],
      ),
    ),
  );
}
