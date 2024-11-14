// presentation/widgets/app_bottom_navigation_bar.dart

import 'package:flutter/material.dart';
import 'package:farmer_aquaculture/presentation/routes/app_routes.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const AppBottomNavigationBar({Key? key, required this.currentIndex})
      : super(key: key);

  void _onItemTapped(BuildContext context, int index) {
    if (index == currentIndex) return; // Do nothing if tapping the current screen
    switch (index) {
      case 0:
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.home,
          (route) => false,
        );
        break;
      case 1:
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.buyAndSell,
          (route) => false,
        );
        break;
        case 2:
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.loan,
          (route) => false,
        );
        case 3:
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.news,
          (route) => false,
        );
        case 4:
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.account,
          (route) => false,
        );
      // Add cases for other screens if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onItemTapped(context, index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "Buy/Sell",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money),
          label: "Loan",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.article),
          label: "News",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: "Account",
        ),
      ],
      selectedItemColor: Colors.green[700],
      unselectedItemColor: Colors.grey,
    );
  }
}
