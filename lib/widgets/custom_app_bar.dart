import 'package:ekidduka/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  final Widget? title; // 'title' parameter

  const CustomAppBar({super.key, this.title})
      : preferredSize = const Size.fromHeight(16.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title, // Use the passed 'title' parameter here
      centerTitle: true, // Center the title (optional)
      backgroundColor: AppColors.whiteColor,
    );
  }
}
