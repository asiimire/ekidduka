import 'package:ekidduka/theme/colors.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  static String routeName = "/activity";

  const ActivityPage({super.key});

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    // Sample activity data
    final List<Map<String, String>> activities = [
      {
        'title': 'Fuel Refill Ordered',
        'date': 'January 2, 2025',
        'status': 'Completed',
        'iconPath': 'assets/images/fuel.png'
      },
      {
        'title': 'Car Wash Appointment',
        'date': 'December 28, 2024',
        'status': 'Pending',
        'iconPath': 'assets/images/car_wash.png'
      },
      {
        'title': 'Tire Repair Request',
        'date': 'December 24, 2024',
        'status': 'Completed',
        'iconPath': 'assets/images/tire.png'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Activities"),
        backgroundColor: AppColors.primaryColor, // Custom theme color
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: activities.length,
          itemBuilder: (context, index) {
            final activity = activities[index];
            return Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: Image.asset(
                  activity['iconPath']!,
                  width: 40,
                  height: 40,
                ),
                title: Text(
                  activity['title']!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("Date: ${activity['date']}"),
                trailing: Text(
                  activity['status']!,
                  style: TextStyle(
                    color: activity['status'] == 'Completed'
                        ? Colors.green
                        : Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Action for tapping activity
                  print("Tapped on ${activity['title']}");
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
