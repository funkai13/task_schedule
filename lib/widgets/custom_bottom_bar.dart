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
              color: Colors.blue, // Fondo azul
              shape: BoxShape.circle, // Hacemos el fondo circular
            ),
            child: const Icon(
              Icons.schedule, // O el icono que prefieras
              color: Colors.white, // Las manijas blancas
              size: 35, // Tamaño del ícono
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
