import 'package:ekidduka/theme/colors.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key}); // route for navigation

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, "/home");
    });

    return Scaffold(
      backgroundColor: AppColors.primaryColor, // Set the background color to the primary yellow
      body: Center(
        child: Image.asset(
          'assets/images/splash_image.png', // Path to your image asset
          fit: BoxFit.contain, // This will make sure the image covers the screen while maintaining its aspect ratio
        ),
      ),
    );
  }
}
