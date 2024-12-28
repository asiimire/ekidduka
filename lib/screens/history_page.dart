import 'package:ekidduka/theme/colors.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  // Sample data for the history page (you can later fetch this from an API or database)
  final List<String> historyItems = [
    "MotoFix service completed on 2024-12-28",
    "New user added on 2024-12-27",
    "Maintenance check completed on 2024-12-25",
    "User settings updated on 2024-12-24",
    "History page accessed on 2024-12-22",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: AppColors.selectedColor, // Using the selectedColor
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: historyItems.length,
          itemBuilder: (context, index) {
            return HistoryItemCard(historyItems[index]);
          },
        ),
      ),
    );
  }
}

class HistoryItemCard extends StatelessWidget {
  final String historyText;

  HistoryItemCard(this.historyText);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4.0,
      child: ListTile(
        title: Text(
          historyText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.selectedColor, // Highlighting the text
          ),
        ),
        trailing: Icon(Icons.arrow_forward, color: AppColors.selectedColor),
        onTap: () {
          // Navigate to a detailed history page or perform another action
          // You can later implement a detailed view when tapping on an item
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HistoryDetailPage(historyText)),
          );
        },
      ),
    );
  }
}

class HistoryDetailPage extends StatelessWidget {
  final String historyText;

  HistoryDetailPage(this.historyText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Detail'),
        backgroundColor: AppColors.selectedColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            historyText,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
