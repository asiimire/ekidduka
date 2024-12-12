import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Rotating gears GIF (on the left)
          Image.asset(
            'assets/images/side_menu.gif',
            width: 30, // Adjust size as needed
            height: 30, // Adjust size as needed
          ),
          SizedBox(width: 100), // Space between gears and logo
          // Your logo (center)
          Image.asset(
            'assets/images/logo.png', // Update with your logo path
            // width: 40, // Adjust logo size
            height: 120, // Adjust logo size
          ),
          Spacer(), // Pushes cart icon to the right
          // Cart icon (on the right)
          IconButton(
            // icon: Icon(Icons.search),
            // icon: Icon(Icons.help_outline),
            // icon: Icon(Icons.notifications_active),
            icon: Icon(Icons.account_circle ),
            onPressed: () {
              // Handle cart icon click here
              print('Profile');
            },
          ),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
