import 'package:flutter/material.dart';

Widget customBottomBar() {
  return BottomAppBar(
    shape: const CircularNotchedRectangle(),
    notchMargin: 10,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.schedule,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
          color: Colors.grey,
          iconSize: 35,
        )
      ],
    ),
  );
}
