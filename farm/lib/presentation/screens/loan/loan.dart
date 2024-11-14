// presentation/screens/Buy and sell/buyandsell.dart

import 'package:farmer_aquaculture/presentation/widget/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class LoanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Row(
          children: [
            Icon(Icons.location_on, color: Colors.white),
            SizedBox(width: 4),
            Text("Home"),
            Spacer(),
            Text(
              "Farm",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.notifications, color: Colors.white),
            SizedBox(width: 4),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 10,
              child: Text("3", style: TextStyle(fontSize: 12, color: Colors.white)),
            ),
          ],
        ),
      ),
      body: Column(
        // Add your HomeScreen body content here
      ),
      bottomNavigationBar: AppBottomNavigationBar(currentIndex: 2),
    );
  }
}


// MarketTab and MarketCard classes as defined previously
