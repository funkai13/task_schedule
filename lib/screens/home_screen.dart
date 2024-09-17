import 'package:flutter/material.dart';
import 'package:task_schedule/widgets/tasks_list.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/day_selector.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: CustomFloatingActionButtonLocation(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {},
            child: const Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: customBottomBar(),
      backgroundColor: const Color(0xFFF5F5F5),
      body: const Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DaySelector(),
            TasksList(),
          ],
        ),
      ),
    );
  }
}

class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double fabX = (scaffoldGeometry.scaffoldSize.width -
            scaffoldGeometry.floatingActionButtonSize.width) /
        2;

    const double bottomAppBarHeight = 56.0;

    final double fabY = scaffoldGeometry.scaffoldSize.height -
        bottomAppBarHeight -
        (scaffoldGeometry.floatingActionButtonSize.height * 0.99);

    return Offset(fabX, fabY);
  }
}
