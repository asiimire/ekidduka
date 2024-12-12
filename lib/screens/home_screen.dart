import 'package:ekidduka/theme/colors.dart';
import 'package:ekidduka/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:ekidduka/widgets/custom_button.dart'; // For reusable custom buttons

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  const HomeScreen({super.key}); // Define route for navigation

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  // Declare the AnimationController and Animation variables properly
  late AnimationController _animationController;
  late Animation<double> _bounceAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController and Animation
    _animationController = AnimationController(
      duration: const Duration(seconds: 2), // Duration of the bounce
      vsync: this,
    )..repeat(reverse: true); // Repeat the animation (bounce back and forth)

    _bounceAnimation = Tween<double>(begin: 0, end: -10).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.elasticInOut, // Bouncy effect curve
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello, Welcome to Ekidduka!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.color, // Using text color from theme
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Your one-stop solution for car services and more.",
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.color, // Using body text color
              ),
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: "View Services", // Button text
              onPressed: () {
                // TODO: Implement navigation to services page
                print("Navigate to services page");
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Book Appointment", // Button text
              onPressed: () {
                // TODO: Implement navigation to booking page
                print("Navigate to booking page");
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Payment History", // Button text
              onPressed: () {
                // TODO: Implement navigation to payment history page
                print("Navigate to payment history page");
              },
            ),
          ],
        ),
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
              const BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 30, // Adjust size as needed
                  width: 30, // Adjust size as needed
                  child: Image.asset(
                    'assets/images/bubble-chat.gif',
                    fit: BoxFit.cover, // Make sure the image fits well
                  ),
                ),
                label: 'Chat',
              ),
            ],
          ),
          // Bouncy FAB using AnimatedPositioned
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width / 2 -
                30, // Center it horizontally
            child: AnimatedBuilder(
              animation: _bounceAnimation,
              builder: (context, child) {
                return Transform.translate(
                  offset:
                      Offset(0, _bounceAnimation.value), // The bouncy effect
                  child: FloatingActionButton(
                    onPressed: () {
                      // Navigate to the order page or show an action sheet for selecting the service
                      print("Order mechanic/service");
                    },
                    backgroundColor:
                        Theme.of(context).primaryColor, // Use the primary color
                    child:
                        const Icon(Icons.add, color: Colors.white), // Plus icon
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _animationController.dispose();
    super.dispose();
  }
}
