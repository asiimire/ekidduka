import 'package:flutter/material.dart';
import 'package:ekidduka/theme/colors.dart';
import 'package:ekidduka/widgets/custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(), // Add your custom app bar if required
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture Section
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile.png'), // Replace with user's profile picture
              ),
            ),
            const SizedBox(height: 20),

            // Profile Details Section
            Text(
              "Name: Patricia", // Replace with user's name dynamically
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Email: patricia@example.com", // Replace with user's email dynamically
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.blackColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Phone: +123 456 7890", // Replace with user's phone number dynamically
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.blackColor,
              ),
            ),
            const SizedBox(height: 20),

            // Settings and Edit Profile Section
            ElevatedButton(
              onPressed: () {
                // Action to edit profile or navigate to edit page
                print('Edit Profile Button Pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12.0),
              ),
              child: const Text(
                "Edit Profile",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Action to navigate to settings or log out
                print('Settings Button Pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12.0),
              ),
              child: const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
