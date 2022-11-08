import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.r),
      child: SizedBox(
        width: 70.w,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.lightBlue,
            elevation: 0.0,
            child: const Icon(
              Icons.add,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
