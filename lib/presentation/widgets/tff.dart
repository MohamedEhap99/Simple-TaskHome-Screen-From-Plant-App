import 'package:flutter/material.dart';
import 'package:task_screen_goviral_workspace/shared/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ColorsApp.kGrey,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Icon(Icons.search, color: ColorsApp.kGrey.withOpacity(0.5)),
        ),
        hintText: 'Search For Plants',
        hintStyle: TextStyle(color: ColorsApp.kGrey.withOpacity(0.5)),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    );
  }
}
