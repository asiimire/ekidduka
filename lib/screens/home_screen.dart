import 'package:ekidduka/theme/colors.dart';
import 'package:ekidduka/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

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

    if (index == 0) {
    // Navigate to the Activity Page
    Navigator.pushNamed(context, '/activity');
  } else if (index == 1) {
    // Navigate to the Home Screen (or MotoFix Page)
    Navigator.pushNamed(context, '/home');
  } else if (index == 2) {
    // Navigate to the Profile/You Page
    Navigator.pushNamed(context, '/profile');
  }
  }
  

  // Function to apply color filtering to the images
  Widget _buildImageIcon(String assetPath, bool isSelected) {
    return SizedBox(
      width: 32, // Standard size for BottomNavigationBar icons
      height: 32,
      child: ColorFiltered(
        colorFilter: isSelected
            ? const ColorFilter.mode(AppColors.selectedColor, BlendMode.srcIn)
            : const ColorFilter.mode(
                AppColors.unselectedColor, BlendMode.srcIn),
        child: Image.asset(
          assetPath,
          fit: BoxFit.contain, // Ensures the image fits within its bounds
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> services = [
      {
        'title': 'Fuel Refill',
        // 'description':
        //     'Ran out of gas on the road? We offer fast, reliable fuel delivery services straight to your location. No need to worry about finding the nearest station—just call us, and we’ll get you moving again.',
        'assetPath': 'assets/images/fuel.png'
      },
      {
        'title': 'Car Wash',
        // 'description':
        //     'Experience a premium car wash service designed to restore your car’s shine. Quick, efficient, and available 24/7 for your convenience!',
        'assetPath': 'assets/images/car_wash.png'
      },
      {
        'title': 'Mobile Mechanic',
        // 'description':
        //     'Encounter a mechanical issue while on the road? Our mobile mechanic service comes to you and offers repairs on the spot, saving you the time and hassle of towing your vehicle to a repair shop.',
        'assetPath': 'assets/images/mobile_mechanic.png'
      },
      {
        'title': 'Tire Repair',
        // 'description':
        //     'Flat tire? Don’t worry! We offer fast tire repair and replacement services, ensuring you/'re back on the road in no time. ',
        'assetPath': 'assets/images/tire.png'
      },
      {
        'title': 'Battery Jump Start',
        // 'description':
        //     'If your car won’t start due to a dead battery, we’ve got you covered with our jump-start service. We’ll come to you, boost your battery, and get your vehicle running in minutes.',
        'assetPath': 'assets/images/battery.png'
      },
      {
        'title': 'Towing & Car Lifting',
        // 'description':
        //     'Stranded on the side of the highway? Our towing service is here to help. Whether you’ve broken down or need to get your vehicle to the nearest repair shop, we offer safe, reliable towing at affordable rates.',
        'assetPath': 'assets/images/carlifting.png'
      },
      {
        'title': 'Windshield Repair',
        // 'description':
        //     'Cracked windshield? Get it fixed right away with our mobile windshield repair service. Whether it/'s a minor chip or a major crack, we’ll come to you and make your windshield look as good as new.',
        'assetPath': 'assets/images/windshield.png'
      },
      {
        'title': 'Oil Change',
        // 'description':
        //     'Keep your engine running smoothly with our quick, on-site oil change service. We bring all the necessary tools to your location and complete the job quickly so you can get back on the road without delay.',
        'assetPath': 'assets/images/oil_change.png'
      },
      
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index; // update the selected index
          });
        },
        children: [
          Column(
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

              // Services Grid
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of cards in each row
                      mainAxisSpacing: 8.0, // Space between rows
                      crossAxisSpacing: 8.0, // Space between columns
                      childAspectRatio: 1.0, // Aspect ratio of the cards
                    ),
                    itemCount:
                        services.length, // Number of service cards to display
                    itemBuilder: (context, index) {
                      final service =
                          services[index]; // Get the service at this index
                      return _buildServiceCard(
                        title: service[
                            'title']!, // Use the title from the services list
                        // subtitle: service[
                        //     'description']!, // Use the description from the services list
                        assetPath: service['assetPath']!,
                        onTap: () {
                          // Action when service card is tapped
                          print("Service ${index + 1} tapped!");
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
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
                icon: Icon(Icons.view_list),
                label: 'Activity',
              ),
              BottomNavigationBarItem(
                icon: _buildImageIcon(
                    'assets/images/side_menu.gif', _selectedIndex == 1),
                label: 'MotoFix',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'You',
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

// _buildServiceCard method (previously implemented)
Widget _buildServiceCard({
  required String title,
  // required String subtitle,
  required String assetPath,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon or Image
            SizedBox(
              width: 120,
              height: 120,
              child: Image.asset(
                assetPath,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 6.0),
            // Text Content
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
              ),
              textAlign: TextAlign.center,
            ),
            // const SizedBox(height: 2.0),
            // SizedBox(
            //   width: double.infinity,
            //   child: Text(
            //     subtitle,
            //     style: const TextStyle(
            //       fontSize: 12,
            //       color: AppColors.whiteColor,
            //     ),
            //     textAlign: TextAlign.center,
            //     overflow: TextOverflow.ellipsis,
            //     maxLines: 2,
            //   ),
            // ),
          ],
        ),
      ),
    ),
  );
}
