import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_screen_goviral_workspace/shared/constants/colors.dart';

class BottomNavBar extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;
  const BottomNavBar({
    super.key,
    required this.index,
    required this.onChangedTab,
  });
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(Object context) {
    return ConvexAppBar(
      items: const [
        TabItem(icon: Icons.home, title: 'HOME'),
        TabItem(
          icon: Icon(
            Icons.home,
            size: 0.0,
          ),
          title: '',
        ),
        TabItem(icon: Icons.person, title: 'PERSON'),
      ],
      style: TabStyle.fixed,
      initialActiveIndex: widget.index,
      height: 70.h,
      top: -30.h,
      curveSize: 150,
      backgroundColor: ColorsApp.kWhite,
      activeColor: ColorsApp.kPeimaryColor,
      color: ColorsApp.kGrey,
      elevation: 0.5,
    );
  }
}
