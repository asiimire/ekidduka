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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/side_menu.gif', // Path to your image asset
              fit: BoxFit.cover, // This will make sure the image covers the screen while maintaining its aspect ratio
            ),
            const SizedBox(height: 20), // Add spacing between the image and text
            const Text(
              "MotoFix",
              style: TextStyle(
                fontSize: 24, // Adjust font size
                fontWeight: FontWeight.bold, // Bold text
                color: Colors.black, // Set text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
