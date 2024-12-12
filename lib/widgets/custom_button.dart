import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ekidduka/theme/theme.dart'; // Access theme for consistent design

class CustomButton extends StatelessWidget {
  final String text; // Button text
  final VoidCallback onPressed; // Callback for onPressed

  // Constructor to take text and onPressed as arguments
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor, // Use the primary color from the theme
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24), // Padding inside the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: onPressed, // Execute onPressed callback when the button is clicked
      child: Text(
        text, // Display the text passed to the button
        style: const TextStyle(color: Colors.white), // White text color
      ),
    );
  }
}
