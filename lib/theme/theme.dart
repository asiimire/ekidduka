import 'package:ekidduka/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,  // Yellow color
    scaffoldBackgroundColor: AppColors.backgroundColor,  // White for general background
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor, // App bar uses the yellow color
      elevation: 0,  // Remove shadow under the app bar
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.blackColor),  // Default text color
      bodyMedium: TextStyle(color: AppColors.blackColor),  // Secondary text color
      displayLarge: TextStyle(color: AppColors.blackColor, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(color: AppColors.blackColor, fontWeight: FontWeight.bold),
      // Add more text styles as per your design needs
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor, // Buttons with yellow background
      textTheme: ButtonTextTheme.primary,  // Text color on buttons is set to primary color (usually white)
    ), colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,  // Primary yellow color
      onPrimary: AppColors.whiteColor,  // Text or icon color on the primary color (usually white)
      // secondary: AppColors.accentColor, // Green accent color for things like floating buttons or highlights
      onSecondary: AppColors.whiteColor,  // Text or icon color on secondary elements
    ).copyWith(surface: AppColors.whiteColor),
    
  );
}
