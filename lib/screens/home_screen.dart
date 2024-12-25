// ignore_for_file: dead_code

import 'package:ekidduka/theme/colors.dart';
import 'package:ekidduka/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  const HomeScreen({super.key}); // Define route for navigation

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Function to apply color filtering to the images
  Widget _buildImageIcon(String assetPath, bool isSelected) {
  return SizedBox(
    width: 32, // Standard size for BottomNavigationBar icons
    height: 32,
    child: ColorFiltered(
      colorFilter: isSelected
          ? const ColorFilter.mode(AppColors.selectedColor, BlendMode.srcIn)
          : const ColorFilter.mode(AppColors.unselectedColor, BlendMode.srcIn),
      child: Image.asset(
        assetPath,
        fit: BoxFit.contain, // Ensures the image fits within its bounds
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align content to the left
        children: [
          // Greeting Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Text(
              "Good Morning, Patricia!", // Replace with dynamic name if needed
              style: TextStyle(
                fontSize: 22, // Adjust font size
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
                // backgroundColor: AppColors.whiteColor // Use your theme's text color
              ),
            ),
          ),

          // My Wallet Card
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: Theme.of(context)
                .primaryColor, // Use theme color for the top part

            child: Column(
              children: [
                // Top half with primary color
                Container(
                  width: double.infinity,
                  color: Theme.of(context)
                      .primaryColor, // Primary color for the top
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "My Wallet",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "UGX 50,000",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColors
                                  .whiteColor, // Use white for the text
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Add action for viewing balance details
                            },
                            icon: const Icon(Icons.info, size: 24),
                            color: AppColors
                                .whiteColor, // Set the icon color to white
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                ),
                // Bottom half with white color
                Container(
                  width: double.infinity,
                  color: Colors.white, // White color for the bottom half
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Deposit Money Button
                      SizedBox(
                        width: double.infinity, // Full-width button
                        child: ElevatedButton(
                          onPressed: () {
                            // Add action for deposit money
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0), // Adjust height
                          ),
                          child: const Text(
                            "Deposit Money",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor:
                AppColors.selectedColor, // Red color when selected
            unselectedItemColor:
                AppColors.unselectedColor, // Grey color when unselected
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: _buildImageIcon(
                    'assets/images/side_menu.gif', _selectedIndex == 1),
                label: 'MotoFix',
              ),
              BottomNavigationBarItem(
                icon: _buildImageIcon(
                    'assets/images/bubble-chat.gif', _selectedIndex == 2),
                label: 'Chat',
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _pageController.dispose();
    super.dispose();
  }
}
