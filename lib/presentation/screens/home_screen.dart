import 'package:flutter/material.dart';
import 'package:task_screen_goviral_workspace/presentation/widgets/body.dart';
import 'package:task_screen_goviral_workspace/presentation/widgets/my_floatingactionbutton.dart';
import 'package:task_screen_goviral_workspace/presentation/widgets/mybottomnavbar.dart';
class HomeScreen extends StatelessWidget {
  final index = 0;
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
      bottomNavigationBar: BottomNavBar(
        index: 0,
        onChangedTab: (int value) {},
      ),
      floatingActionButton: const MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
